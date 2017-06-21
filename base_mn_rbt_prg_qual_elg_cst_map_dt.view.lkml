view: mn_rbt_prg_qual_elg_cst_map_dt {
  derived_table: {
    sql: SELECT
      E.PROGRAM_WID AS PROGRAM_WID,
        E.PROGRAM_QUAL_WID AS PROGRAM_QUAL_WID,
          E.ELIG_CUSTOMER_WID AS ELIG_CUSTOMER_WID,
          E.ELIG_START_DATE AS ELIG_START_DATE,
          MIN(EC.CUSTOMER_NUM) AS ELIG_CUSTOMER_NUM,
          MIN(EC.CUSTOMER_NAME) AS ELIG_CUSTOMER_NAME,
          MIN(EC.MEMBER_INFO_TYPE) AS ELIG_CUSTOMER_TYPE,
          MIN(EC.PLAN_TYPE) AS ELIG_PLAN_TYPE,
          MIN(E.ELIG_END_DATE) AS ELIG_END_DATE,
          MIN(COT.CLASS_OF_TRADE) AS PLAN_CLASS_OF_TRADE,
          MIN(COT.DESCRIPTION) AS PLAN_COT_DESCRIPTION,
          MIN(COT.DOMAIN) AS PLAN_DOMAIN,
          MAX(NULLIF(CCOT.EFF_START_DATE, To_Date('07/03/1776','mm/dd/yyyy')))  AS PLAN_COT_EFFECTIVE_DATE,
          MIN(PC.CUSTOMER_WID) AS PLAN_CUSTOMER_WID,
          MIN(PC.CUSTOMER_NUM) AS PLAN_CUSTOMER_NUM,
          MIN(PC.CUSTOMER_NAME) AS PLAN_CUSTOMER_NAME,
          MIN(L.NUMBER_OF_LIVES) AS PLAN_NUMBER_OF_LIVES,
        MIN(E.CONTRACT_TYPE) AS CONTRACT_TYPE
        FROM
        MN_RBT_PRG_QUAL_ELG_CST_MAP_VW E
          LEFT JOIN MN_CUSTOMER_DIM_VW EC ON E.ELIG_CUSTOMER_WID = EC.CUSTOMER_WID
          LEFT JOIN MN_CUSTOMER_MAP_VW CM ON E.ELIG_CUSTOMER_WID = CM.CHILD_CUST_WID AND CM.START_DATE<=sysdate AND CM.END_DATE>=sysdate
          LEFT JOIN MN_CUSTOMER_DIM_VW PC ON CM.PARENT_CUST_WID = PC.CUSTOMER_WID AND UPPER(PC.MEMBER_INFO_TYPE) = 'PLAN CUSTOMER'
          LEFT JOIN MN_CUSTOMER_COT_DIM_VW CCOT ON CCOT.CUSTOMER_WID = EC.CUSTOMER_WID AND CCOT.EFF_START_DATE <= ELIG_START_DATE AND CCOT.EFF_END_DATE >= ELIG_START_DATE
          LEFT JOIN MN_COT_DIM_VW COT ON COT.COT_WID = CCOT.COT_WID
          LEFT JOIN MN_NUMBER_OF_LIVES_FACT_VW L ON EC.CUSTOMER_WID = L.CUSTOMER_WID AND TO_CHAR(ELIG_START_DATE, 'YYYYMM')||'01' = L.DATE_DIM_WID
          GROUP BY E.PROGRAM_WID, E.PROGRAM_QUAL_WID, E.ELIG_CUSTOMER_WID, E.ELIG_START_DATE
       ;;
  }

# created this key as there is no primary key defined
  dimension: composite_primary_key {
    hidden: yes
    type: string
    primary_key: yes
    sql: ${TABLE}.PROGRAM_WID ||'-'|| PROGRAM_QUAL_WID ||'-'|| ${TABLE}.ELIG_CUSTOMER_WID ||'-'||${TABLE}.ELIG_START_DATE ||'-'|| ${TABLE}.ELIG_END_DATE ;;
  }

  dimension: program_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: program_qual_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PROGRAM_QUAL_WID ;;
  }

  dimension: elig_customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ELIG_CUSTOMER_WID ;;
  }

  dimension_group: eligible_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ELIG_START_DATE ;;
  }

  dimension: eligible_customer_num {
    type: string
    sql: ${TABLE}.ELIG_CUSTOMER_NUM ;;
  }

  dimension: eligible_customer_name {
    type: string
    sql: ${TABLE}.ELIG_CUSTOMER_NAME ;;
  }

  dimension: eligible_customer_type {
    type: string
    sql: ${TABLE}.ELIG_CUSTOMER_TYPE ;;
  }

  dimension: eligible_plan_type {
    type: string
    sql: ${TABLE}.ELIG_PLAN_TYPE ;;
  }

  dimension_group: eligible_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ELIG_END_DATE ;;
  }

  dimension: plan_class_of_trade {
    type: string
    sql: ${TABLE}.PLAN_CLASS_OF_TRADE ;;
  }

  dimension: plan_cot_description {
    type: string
    sql: ${TABLE}.PLAN_COT_DESCRIPTION ;;
  }

  dimension: plan_domain {
    type: string
    sql: ${TABLE}.PLAN_DOMAIN ;;
  }

  dimension_group: plan_cot_effective_date {
    type: time
    sql: ${TABLE}.PLAN_COT_EFFECTIVE_DATE ;;
  }

  dimension: plan_customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PLAN_CUSTOMER_WID ;;
  }

  dimension: plan_customer_num {
    type: string
    sql: ${TABLE}.PLAN_CUSTOMER_NUM ;;
  }

  dimension: plan_customer_name {
    type: string
    sql: ${TABLE}.PLAN_CUSTOMER_NAME ;;
  }

  dimension: plan_number_of_lives {
    type: string
    sql: ${TABLE}.PLAN_NUMBER_OF_LIVES ;;
  }

  dimension: contract_type {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_TYPE ;;
  }

#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }

  set: detail {
    fields: [
      eligible_customer_num,
      eligible_customer_name,
      eligible_customer_type,
      eligible_plan_type,
      plan_class_of_trade,
      plan_cot_description,
      plan_domain,
      plan_customer_num,
      plan_customer_name,
      plan_number_of_lives
    ]
  }
}
