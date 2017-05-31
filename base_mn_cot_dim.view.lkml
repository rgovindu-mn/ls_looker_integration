view: mn_cot_dim {
  sql_table_name: MN_COT_DIM ;;

  dimension: class_of_trade {
    type: string
    sql: ${TABLE}.CLASS_OF_TRADE ;;
  }

  dimension: cot_type {
    type: string
    sql: ${TABLE}.COT_TYPE ;;
  }

  dimension: cot_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.COT_WID ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.DOMAIN ;;
  }

  dimension: domain_cot {
    type: string
    sql: ${TABLE}.DOMAIN_COT ;;
  }

  dimension: domain_description {
    type: string
    sql: ${TABLE}.DOMAIN_DESCRIPTION ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
