view: mn_cmpl_commit_fact {
  sql_table_name: MN_CMPL_COMMIT_FACT_VW ;;

  dimension: cmt_change_code_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CMT_CHANGE_CODE_WID ;;
  }

  dimension_group: commit_end {
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
    sql: ${TABLE}.COMMIT_END_DATE ;;
  }

  dimension: commit_end_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.COMMIT_END_DATE_WID ;;
  }

  dimension: commit_num {
    type: string
    sql: ${TABLE}.COMMIT_NUM ;;
  }

  dimension_group: commit_start {
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
    sql: ${TABLE}.COMMIT_START_DATE ;;
  }

  dimension: commit_start_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.COMMIT_START_DATE_WID ;;
  }

  dimension: commit_status {
    type: string
    sql: ${TABLE}.COMMIT_STATUS ;;
  }

  dimension: commit_tier {
    type: number
    sql: ${TABLE}.COMMIT_TIER ;;
  }

  dimension: commit_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.COMMIT_TYPE_WID ;;
  }

  dimension: commitment_value {
    type: number
    sql: ${TABLE}.COMMITMENT_VALUE ;;
  }

  dimension: contract_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension_group: date_created {
    hidden: yes
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
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
    hidden: yes
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
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: definition_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.DEFINITION_WID ;;
  }

  dimension: is_access_price_flag {
    type: number
    sql: ${TABLE}.IS_ACCESS_PRICE_FLAG ;;
  }

  dimension: on_hold {
    type: number
    sql: ${TABLE}.ON_HOLD ;;
  }

  dimension: org_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: pg_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: program_based_flag {
    type: string
    sql: ${TABLE}.PROGRAM_BASED_FLAG ;;
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

  dimension_group: src_sys_cmt_date_updated {
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
    sql: ${TABLE}.SRC_SYS_CMT_DATE_UPDATED ;;
  }

  dimension: src_sys_commit_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_COMMIT_ID ;;
  }

  dimension: src_sys_definition_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_DEFINITION_ID ;;
  }

  dimension: strategy_based_flag {
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: track_start_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.TRACK_START_DATE_WID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
