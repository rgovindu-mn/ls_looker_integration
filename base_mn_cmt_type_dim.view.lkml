view: mn_cmt_type_dim {
  sql_table_name: MN_CMT_TYPE_DIM_VW ;;

  dimension: cmt_type_desc {
    type: string
    sql: ${TABLE}.CMT_TYPE_DESC ;;
  }

  dimension: cmt_type_name {
    type: string
    sql: ${TABLE}.CMT_TYPE_NAME ;;
  }

  dimension: cmt_type_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.CMT_TYPE_WID ;;
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
    hidden: yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_cmt_type_code {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_CMT_TYPE_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [cmt_type_name]
  }
}
