view: mn_rebate_type_dim {
  sql_table_name: MN_REBATE_TYPE_DIM ;;

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

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: external_line_type {
    type: string
    sql: ${TABLE}.EXTERNAL_LINE_TYPE ;;
  }

  dimension: rbt_sub_type {
    type: string
    sql: ${TABLE}.RBT_SUB_TYPE ;;
  }

  dimension: rbt_sub_type_name {
    type: string
    sql: ${TABLE}.RBT_SUB_TYPE_NAME ;;
  }

  dimension: rbt_sub_type_shortname {
    type: string
    sql: ${TABLE}.RBT_SUB_TYPE_SHORTNAME ;;
  }

  dimension: rbt_type {
    type: string
    sql: ${TABLE}.RBT_TYPE ;;
  }

  dimension: rbt_type_name {
    type: string
    sql: ${TABLE}.RBT_TYPE_NAME ;;
  }

  dimension: rbt_type_shortname {
    type: string
    sql: ${TABLE}.RBT_TYPE_SHORTNAME ;;
  }

  dimension: rebate_type_wid {
    type: number
    sql: ${TABLE}.REBATE_TYPE_WID ;;
  }

  dimension: run_id {
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}.SOURCE_TYPE ;;
  }

  measure: rebate_type_count {
    type: count
    drill_fields: [rbt_sub_type_name, rbt_type_name, rbt_type_shortname, rbt_sub_type_shortname]
  }
}
