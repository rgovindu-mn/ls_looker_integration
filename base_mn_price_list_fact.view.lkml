view: mn_price_list_fact {
  sql_table_name: MN_PRICE_LIST_FACT_VW ;;

  dimension: customer_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.CUSTOMER_WID ;;
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

  dimension: exchange_rate {
    type: string
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension_group: period_end {
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
    sql: ${TABLE}.PERIOD_END_DATE ;;
  }

  dimension: period_end_date_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PERIOD_END_DATE_WID ;;
  }

  dimension_group: period_start {
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
    sql: ${TABLE}.PERIOD_START_DATE ;;
  }

  dimension: period_start_date_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PERIOD_START_DATE_WID ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.PRICE ;;
  }

  dimension: price_base {
    type: string
    sql: ${TABLE}.PRICE_BASE ;;
  }

  dimension: price_curr {
    type: string
    sql: ${TABLE}.PRICE_CURR ;;
  }

  dimension: price_list_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PRICE_LIST_WID ;;
  }

  dimension: product_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PRODUCT_WID ;;
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
