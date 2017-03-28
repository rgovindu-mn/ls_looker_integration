view: mn_program_type_dim {
  sql_table_name: MN_PROGRAM_TYPE_DIM_VW ;;

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

  dimension: program_type_desc {
    type: string
    sql: ${TABLE}.PROGRAM_TYPE_DESC ;;
  }

  dimension: program_type_name {
    type: string
    sql: ${TABLE}.PROGRAM_TYPE_NAME ;;
  }

  dimension: program_type_wid {
    type: string
    sql: ${TABLE}.PROGRAM_TYPE_WID ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_program_type_code {
    type: string
    sql: ${TABLE}.SRC_SYS_PROGRAM_TYPE_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [program_type_name]
  }
}
