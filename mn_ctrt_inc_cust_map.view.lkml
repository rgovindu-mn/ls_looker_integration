view: mn_ctrt_inc_cust_map {
  sql_table_name: MN_CTRT_INC_CUST_MAP_VW ;;

  dimension: contract_wid {
    type: string
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: customer_wid {
    type: string
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension_group: date_created {
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

  dimension_group: eff_end {
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
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension_group: eff_start {
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
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension: exclusion_flag {
    type: string
    sql: ${TABLE}.EXCLUSION_FLAG ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_elig_id {
    type: string
    sql: ${TABLE}.SRC_SYS_ELIG_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
