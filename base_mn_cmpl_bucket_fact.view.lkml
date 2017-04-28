view: mn_cmpl_bucket_fact {
  sql_table_name: MN_CMPL_BUCKET_FACT_VW ;;

  dimension: actual_amt_to_date {
    type: number
    sql: ${TABLE}.ACTUAL_AMT_TO_DATE ;;
  }

  dimension: actual_amt_to_date_base {
    type: number
    sql: ${TABLE}.ACTUAL_AMT_TO_DATE_BASE ;;
  }

  dimension: actual_to_date {
    type: number
    sql: ${TABLE}.ACTUAL_TO_DATE ;;
  }

  dimension: bucket_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.BUCKET_WID ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension_group: date_created {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: equiv_rev_value {
    type: string
    sql: ${TABLE}.EQUIV_REV_VALUE ;;
  }

  dimension: equiv_value {
    type: string
    sql: ${TABLE}.EQUIV_VALUE ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: expected_amt_to_date {
    type: number
    sql: ${TABLE}.EXPECTED_AMT_TO_DATE ;;
  }

  dimension: expected_amt_to_date_base {
    type: number
    sql: ${TABLE}.EXPECTED_AMT_TO_DATE_BASE ;;
  }

  dimension: pct_rev_cmpl {
    type: string
    sql: ${TABLE}.PCT_REV_CMPL ;;
  }

  dimension: pct_vol_cmpl {
    type: string
    sql: ${TABLE}.PCT_VOL_CMPL ;;
  }

  dimension: period_wid {
    hidden: yes
    type: number

    sql: ${TABLE}.PERIOD_WID ;;
  }

  dimension: proj_rev_at_risk {
    type: number
    sql: ${TABLE}.PROJ_REV_AT_RISK ;;
  }

  dimension: proj_rev_at_risk_base {
    type: number
    sql: ${TABLE}.PROJ_REV_AT_RISK_BASE ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_bucket_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_BUCKET_ID ;;
  }

  dimension: src_sys_calc_obj_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_CALC_OBJ_ID ;;
  }

  dimension: src_sys_tb_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_TB_ID ;;
  }

  dimension: strategy_based_flag {
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: tier_basis_desc {
    type: string
    sql: ${TABLE}.TIER_BASIS_DESC ;;
  }

  dimension: tier_basis_type_desc {
    type: string
    sql: ${TABLE}.TIER_BASIS_TYPE_DESC ;;
  }

  dimension: tier_min_value {
    type: string
    sql: ${TABLE}.TIER_MIN_VALUE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
