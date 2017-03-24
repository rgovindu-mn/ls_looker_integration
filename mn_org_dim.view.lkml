view: mn_org_dim {
  sql_table_name: LSETLDM.MN_ORG_DIM ;;

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: org_display_name {
    type: string
    sql: ${TABLE}.ORG_DISPLAY_NAME ;;
  }

  dimension: org_name {
    type: string
    sql: ${TABLE}.ORG_NAME ;;
  }

  dimension: org_wid {
    type: string
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: parent_org_wid {
    type: string
    sql: ${TABLE}.PARENT_ORG_WID ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_org_id {
    type: string
    sql: ${TABLE}.SRC_SYS_ORG_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [org_name, org_display_name]
  }
}
