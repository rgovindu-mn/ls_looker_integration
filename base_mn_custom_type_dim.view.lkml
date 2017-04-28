view: mn_custom_type_dim {
  sql_table_name: MN_CUSTOM_TYPE_DIM_VW ;;

  dimension: custom_type_code {
    type: string
    sql: ${TABLE}.CUSTOM_TYPE_CODE ;;
  }

  dimension: custom_type_desc {
    type: string
    sql: ${TABLE}.CUSTOM_TYPE_DESC ;;
  }

  dimension: custom_type_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.CUSTOM_TYPE_WID ;;
  }

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

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}.SOURCE_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
