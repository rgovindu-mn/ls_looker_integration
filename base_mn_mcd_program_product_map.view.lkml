view: mn_mcd_program_product_map {

  sql_table_name: MN_MCD_PROGRAM_PRODUCT_MAP_VW ;;


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

  dimension_group: end_date {
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

  dimension: formula_def {
    type: string
    sql: ${TABLE}.FORMULA_DEF ;;
  }

  dimension: formula_type {
    type: string
    sql: ${TABLE}.FORMULA_TYPE ;;
  }

  dimension: mcd_program_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.MCD_PROGRAM_WID ;;
  }

  dimension: product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension_group: start_date {
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
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      date_created_time,
      date_updated_time,
      end_date_time,
      formula_def,
      formula_type,
      mcd_program_wid,
      product_wid,
      run_id,
      source_system_id,
      start_date_time
    ]
  }
}
