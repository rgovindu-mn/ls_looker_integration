view: mn_ctrt_type_dim {
  sql_table_name: LSETLDM.MN_CTRT_TYPE_DIM ;;

  dimension: ctrt_type_desc {
    type: string
    sql: ${TABLE}.CTRT_TYPE_DESC ;;
  }

  dimension: ctrt_type_name {
    type: string
    sql: ${TABLE}.CTRT_TYPE_NAME ;;
  }

  dimension: ctrt_type_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CTRT_TYPE_WID ;;
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

  dimension: run_id {
    hidden: yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_ctrt_type_code {
    type: string
    sql: ${TABLE}.SRC_SYS_CTRT_TYPE_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [ctrt_type_name]
  }
}
