view: mn_customer_map {
  sql_table_name: LSETLDM.MN_CUSTOMER_MAP ;;

  dimension: child_cust_wid {
    type: string
    sql: ${TABLE}.CHILD_CUST_WID ;;
  }

  dimension: created_by_wid {
    type: string
    sql: ${TABLE}.CREATED_BY_WID ;;
  }

  dimension: created_date_wid {
    type: string
    sql: ${TABLE}.CREATED_DATE_WID ;;
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

  dimension: mem_level {
    type: string
    sql: ${TABLE}.MEM_LEVEL ;;
  }

  dimension: parent_cust_wid {
    type: string
    sql: ${TABLE}.PARENT_CUST_WID ;;
  }

  dimension: primary_flag {
    type: string
    sql: ${TABLE}.PRIMARY_FLAG ;;
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

  dimension: updated_by_wid {
    type: string
    sql: ${TABLE}.UPDATED_BY_WID ;;
  }

  dimension: updated_date_wid {
    type: string
    sql: ${TABLE}.UPDATED_DATE_WID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
