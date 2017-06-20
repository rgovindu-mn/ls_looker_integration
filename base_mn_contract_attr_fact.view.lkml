view: mn_contract_attr_fact {
  sql_table_name: MN_CONTRACT_ATTR_FACT_VW ;;

  dimension: attr_format {
    type: string
    sql: ${TABLE}.ATTR_FORMAT ;;
  }

  dimension: attr_name {
    label: "Contract EDA Name"
    group_label: " Effective Dated Attributes (EDA)"
    type: string
    sql: ${TABLE}.ATTR_NAME ;;
  }

  dimension: attr_value {
    label: "Contract EDA Value"
    group_label: " Effective Dated Attributes (EDA)"
    type: string
    sql: ${TABLE}.ATTR_VALUE ;;
  }

  dimension: contract_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_WID ;;
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
    group_label: " Effective Dated Attributes (EDA)"
    label: "Contract EDA End"
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
    label: "Contract EDA Start"
    group_label: " Effective Dated Attributes (EDA)"
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

  dimension: src_sys_contract_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_CONTRACT_ID ;;
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

  measure: attribute_count {
    type: count
    drill_fields: [attr_name]
  }
}
