view: mn_price_list_dim {
  sql_table_name: MN_PRICE_LIST_DIM_VW ;;

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension_group: date_created {
    type: time
    hidden:  yes
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
    hidden:  yes
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

  dimension: org_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.ORG_WID ;;
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
    hidden:  yes
    type: number
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
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_START_DATE_WID ;;
  }

  dimension: price_list_id_num {
    hidden:  yes
    type: number
    sql: ${TABLE}.PRICE_LIST_ID_NUM ;;
  }

  dimension: price_list_name {
    type: string
    sql: ${TABLE}.PRICE_LIST_NAME ;;
  }

  dimension: price_list_status {
    type: string
    sql: ${TABLE}.PRICE_LIST_STATUS ;;
  }

  dimension: price_list_sys_type {
    type: string
    sql: ${TABLE}.PRICE_LIST_SYS_TYPE ;;
  }

  dimension: price_list_type_name {
    type: string
    sql: ${TABLE}.PRICE_LIST_TYPE_NAME ;;
  }

  dimension: price_list_wid {
    hidden:  yes
    type: number
    primary_key: yes
    sql: ${TABLE}.PRICE_LIST_WID ;;
  }

  dimension: qual_type {
    type: string
    sql: ${TABLE}.QUAL_TYPE ;;
  }

  dimension: run_id {
    hidden:  yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden:  yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_price_list_id {
    type: string
    sql: ${TABLE}.SRC_SYS_PRICE_LIST_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [price_list_name, price_list_type_name]
  }
}
