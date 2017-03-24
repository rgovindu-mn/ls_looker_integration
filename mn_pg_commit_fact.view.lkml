view: mn_pg_commit_fact {
  sql_table_name: LSETLDM.MN_PG_COMMIT_FACT ;;

  dimension: cmt_change_code_wid {
    type: string
    sql: ${TABLE}.CMT_CHANGE_CODE_WID ;;
  }

  dimension: commit_type_wid {
    type: string
    sql: ${TABLE}.COMMIT_TYPE_WID ;;
  }

  dimension: commitment_value {
    type: string
    sql: ${TABLE}.COMMITMENT_VALUE ;;
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

  dimension: eff_end_date_wid {
    type: string
    sql: ${TABLE}.EFF_END_DATE_WID ;;
  }

  dimension: eff_start_date_wid {
    type: string
    sql: ${TABLE}.EFF_START_DATE_WID ;;
  }

  dimension: end_ver_num {
    type: string
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: is_access_price_flag {
    type: string
    sql: ${TABLE}.IS_ACCESS_PRICE_FLAG ;;
  }

  dimension: latest_flag {
    type: string
    sql: ${TABLE}.LATEST_FLAG ;;
  }

  dimension: on_hold {
    type: string
    sql: ${TABLE}.ON_HOLD ;;
  }

  dimension: pg_commit_wid {
    type: string
    sql: ${TABLE}.PG_COMMIT_WID ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
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
    type: string
    sql: ${TABLE}.SRC_SYS_COMMIT_ID ;;
  }

  dimension: tier_idx {
    type: string
    sql: ${TABLE}.TIER_IDX ;;
  }

  dimension: track_start_date_wid {
    type: string
    sql: ${TABLE}.TRACK_START_DATE_WID ;;
  }

  dimension_group: ver_end {
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
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: ver_num {
    type: string
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension_group: ver_start {
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
    sql: ${TABLE}.VER_START_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
