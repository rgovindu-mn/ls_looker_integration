view: mn_customer_ids_dim {
  sql_table_name: MN_CUSTOMER_IDS_DIM_VW ;;

  dimension: created_user_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CREATED_USER_WID ;;
  }

  dimension: customer_id_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.CUSTOMER_ID_WID ;;
  }

  dimension: customer_wid {
    hidden: yes
    type: number
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

  dimension_group: eff_end {
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
    sql: ${TABLE}.EFF_END_DATE ;;
    label: "Effective End"
  }

  dimension_group: eff_start {
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
    sql: ${TABLE}.EFF_START_DATE ;;
    label: "Effective Start"
  }

  dimension: id_num {
    type: string
    sql: ${TABLE}.ID_NUM ;;
    label: "Alternate ID Number"
  }

  dimension: id_type {
    type: string
    sql: ${TABLE}.ID_TYPE ;;
    label: "Alternate ID Type"
  }

  dimension: primary_flag {
    type: string
    sql: ${TABLE}.PRIMARY_FLAG ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension_group: src_sys_date_created {
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
    sql: ${TABLE}.SRC_SYS_DATE_CREATED ;;
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

  dimension: src_sys_id_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_ID_ID ;;
  }

  dimension: updated_user_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.UPDATED_USER_WID ;;
  }

  measure: customer_ids_count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
