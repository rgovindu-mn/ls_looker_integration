view: mn_ctrt_domain_dim {
  sql_table_name: MN_CTRT_DOMAIN_DIM_VW ;;

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

  dimension: domain_desc {
    type: string
    sql: ${TABLE}.DOMAIN_DESC ;;
  }

  dimension: domain_name {
    type: string
    sql: ${TABLE}.DOMAIN_NAME ;;
  }

  dimension: domain_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.DOMAIN_WID ;;
  }

  dimension: run_id {
    hidden: yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_domain_code {
    type: string
    sql: ${TABLE}.SRC_SYS_DOMAIN_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [domain_name]
  }
}
