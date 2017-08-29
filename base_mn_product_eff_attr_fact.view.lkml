view: mn_product_eff_attr_fact {
  sql_table_name: MN_PRODUCT_EFF_ATTR_FACT_VW;;

  dimension: attr_format {
    type: string
    label: "Attribute Format"
    sql: ${TABLE}.ATTR_FORMAT ;;
  }

  dimension: attr_name {
    type: string
    label: "Attribute Name"
    sql: ${TABLE}.ATTR_NAME ;;
  }

  dimension: attr_value {
    type: string
    label: "Attribute Value"
    sql: ${TABLE}.ATTR_VALUE ;;
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

  dimension_group: eff_end {
    type: time
    label: "Effective End"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension_group: eff_start {
    type: time
    label: "Effective Start"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension: is_filterable {
    type: string
    sql: ${TABLE}.IS_FILTERABLE ;;
  }

  dimension: product_wid {
    hidden: yes
    type: number
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

  dimension_group: src_sys_date_updated {
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
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension: src_sys_product_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_PRODUCT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [attr_name]
  }
}
