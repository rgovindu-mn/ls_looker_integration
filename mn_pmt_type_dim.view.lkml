view: mn_pmt_type_dim {
  sql_table_name: LSETLDM.MN_PMT_TYPE_DIM ;;

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

  dimension: pmt_type_desc {
    type: string
    sql: ${TABLE}.PMT_TYPE_DESC ;;
  }

  dimension: pmt_type_name {
    type: string
    sql: ${TABLE}.PMT_TYPE_NAME ;;
  }

  dimension: pmt_type_wid {
    type: string
    sql: ${TABLE}.PMT_TYPE_WID ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_pmt_type_code {
    type: string
    sql: ${TABLE}.SRC_SYS_PMT_TYPE_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [pmt_type_name]
  }
}
