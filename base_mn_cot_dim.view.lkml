view: mn_cot_dim {
  sql_table_name: MN_COT_DIM_VW ;;

  dimension: class_of_trade {
    type: string
    sql: ${TABLE}.CLASS_OF_TRADE ;;
  }

  dimension: cot_type {
    type: string
    hidden: yes
    label: "COT Type"
    sql: ${TABLE}.COT_TYPE ;;
  }

  dimension: cot_wid {
    hidden: yes
    primary_key: yes
    type: number
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
    label: "Description"
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: domain {
    type: string
    label: "Domain"
    sql: ${TABLE}.DOMAIN ;;
  }

  dimension: domain_cot {
    type: string
    hidden: yes
    label: "Domain COT"
    sql: ${TABLE}.DOMAIN_COT ;;
  }

  dimension: cot_domain_description {
    type: string
    hidden: yes
    label: "COT Domain Description"
    sql: ${TABLE}.DOMAIN_DESCRIPTION ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  measure: cot_count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
