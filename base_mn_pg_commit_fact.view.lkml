view: mn_pg_commit_fact {
  sql_table_name: MN_PG_COMMIT_FACT_vw ;;

  dimension: cmt_change_code_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CMT_CHANGE_CODE_WID ;;
  }

  dimension: commit_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.COMMIT_TYPE_WID ;;
  }

  dimension: commitment_value {
    type: string
    sql: ${TABLE}.COMMITMENT_VALUE ;;
  }

  dimension: customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_WID ;;
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

  dimension: eff_end_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.EFF_END_DATE_WID ;;
  }

  dimension: eff_start_date_wid {
    hidden: yes
    type: number
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
    hidden: yes
    type: number
    sql: ${TABLE}.PG_COMMIT_WID ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
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

  dimension: tier_idx {
    type: string
    sql: ${TABLE}.TIER_IDX ;;
  }

  dimension: track_start_date_wid {
    hidden: yes
    type: number
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
