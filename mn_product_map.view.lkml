view: mn_product_map {
  sql_table_name: LSETLDM.MN_PRODUCT_MAP ;;

  dimension: child_prod_wid {
    type: string
    sql: ${TABLE}.CHILD_PROD_WID ;;
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

  dimension: depth_from_parent {
    type: string
    sql: ${TABLE}.DEPTH_FROM_PARENT ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: level_name {
    type: string
    sql: ${TABLE}.LEVEL_NAME ;;
  }

  dimension: parent_prod_wid {
    type: string
    sql: ${TABLE}.PARENT_PROD_WID ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.START_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: [level_name]
  }
}
