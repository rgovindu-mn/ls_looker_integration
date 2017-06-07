view: mn_customer_ids_dim {
  sql_table_name: MN_CUSTOMER_IDS_DIM_VW ;;

  dimension: created_user_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.CREATED_USER_WID ;;
  }

  dimension: customer_id_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.CUSTOMER_ID_WID ;;
  }

  dimension: customer_wid {
    hidden: yes
    type: string
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
    type: string
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
    type: string
    sql: ${TABLE}.SRC_SYS_ID_ID ;;
  }

  dimension: updated_user_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.UPDATED_USER_WID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
