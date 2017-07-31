view: mn_mcd_program_dim {
  sql_table_name: MN_MCD_PROGRAM_DIM_VW ;;

  dimension: amended_by_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.AMENDED_BY_WID ;;
  }

  dimension_group: amended_on {
    type: time
    label: "Amended"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.AMENDED_ON ;;
  }

  dimension: created_by_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CREATED_BY_WID ;;
  }

  dimension_group: created_on {
    type: time
    label: "Created"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATED_ON ;;
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

  dimension: def_claim_line_util_type {
    type: string
    label: "Default Record Id"
    sql: ${TABLE}.DEF_CLAIM_LINE_UTIL_TYPE ;;
  }

  dimension: last_updated_by_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.LAST_UPDATED_BY_WID ;;
  }

  dimension_group: last_updated_on {
    type: time
    label: "Last Updated"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LAST_UPDATED_ON ;;
  }

  dimension: owner_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.OWNER_WID ;;
  }

  dimension_group: program_end_qtr {
    type: time
    label: "Program End Quarter"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PROGRAM_END_QTR ;;
  }

  dimension: program_end_qtr_str {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_END_QTR_STR ;;
  }

  dimension: program_id_num {
    type: string
    label: "Program Id Number"
    sql: ${TABLE}.PROGRAM_ID_NUM ;;
  }

  dimension: program_name {
    type: string
    sql: ${TABLE}.PROGRAM_NAME ;;
  }

  dimension: program_short_name {
    type: string
    sql: ${TABLE}.PROGRAM_SHORT_NAME ;;
  }

  dimension_group: program_start_qtr {
    type: time
    label: "Program Start Quarter"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PROGRAM_START_QTR ;;
  }

  dimension: program_start_qtr_str {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_START_QTR_STR ;;
  }

  dimension: program_status {
    type: string
    sql: ${TABLE}.PROGRAM_STATUS ;;
  }

  dimension: program_type {
    type: string
    sql: ${TABLE}.PROGRAM_TYPE ;;
  }

  dimension: program_wid {
    type: string
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_mgr_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_pk_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PK_ID ;;
  }

  dimension: src_sys_program_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PROGRAM_ID ;;
  }

#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }

  set: detail {
    fields: [
      amended_by_wid,
      amended_on_time,
      created_by_wid,
      created_on_time,
      date_created_time,
      date_updated_time,
      def_claim_line_util_type,
      last_updated_by_wid,
      last_updated_on_time,
      owner_wid,
      program_end_qtr_time,
      program_end_qtr_str,
      program_id_num,
      program_name,
      program_short_name,
      program_start_qtr_time,
      program_start_qtr_str,
      program_status,
      program_type,
      program_wid,
      run_id,
      source_system_id,
      src_sys_mgr_id,
      src_sys_pk_id,
      src_sys_program_id
    ]
  }
}
