view: mn_ctrt_sub_type_dim {
  sql_table_name: MN_CTRT_SUB_TYPE_DIM_VW ;;

  dimension: ctrt_sub_type_desc {
    type: string
    sql: ${TABLE}.CTRT_SUB_TYPE_DESC ;;
  }

  dimension: ctrt_sub_type_name {
    type: string
    sql: ${TABLE}.CTRT_SUB_TYPE_NAME ;;
  }

  dimension: ctrt_sub_type_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.CTRT_SUB_TYPE_WID ;;
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

  dimension: run_id {
    type: number
    hidden: yes
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_ctrt_sub_type_code {
    type: string
    sql: ${TABLE}.SRC_SYS_CTRT_SUB_TYPE_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [ctrt_sub_type_name]
  }
}
