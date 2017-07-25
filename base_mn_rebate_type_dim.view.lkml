view: mn_rebate_type_dim {
  sql_table_name: MN_REBATE_TYPE_DIM_VW ;;

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
    label: "Rebate Sub Type"
  }

  dimension: rbt_sub_type_name {
    type: string
    sql: ${TABLE}.RBT_SUB_TYPE_NAME ;;
    label: "Rebate Sub Type Name"
  }

  dimension: rbt_sub_type_shortname {
    type: string
    sql: ${TABLE}.RBT_SUB_TYPE_SHORTNAME ;;
    label: "Rebate Sub Type Shortname"
  }

  dimension: rbt_type {
    type: string
    sql: ${TABLE}.RBT_TYPE ;;
    label: "Rebate Type"
  }

  dimension: rbt_type_name {
    type: string
    sql: ${TABLE}.RBT_TYPE_NAME ;;
    label: "Rebate Type Name"
  }

  dimension: rbt_type_shortname {
    type: string
    sql: ${TABLE}.RBT_TYPE_SHORTNAME ;;
    label: "Rebate Type Shortname"
  }

  dimension: rebate_type_wid {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.REBATE_TYPE_WID ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
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

  measure: rebate_type_count {
    type: count
    drill_fields: [rbt_sub_type_name, rbt_type_name, rbt_type_shortname, rbt_sub_type_shortname]
  }
}
