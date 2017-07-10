view: base_mn_mcd_adjust_type_dim {

sql_table_name: MN_MCD_ADJUST_TYPE_DIM_VW ;;

  dimension: adjust_type_desc {
    type: string
    sql: ${TABLE}.ADJUST_TYPE_DESC ;;
  }

  dimension: adjust_type_name {
    type: string
    primary_key: yes
    sql: ${TABLE}.ADJUST_TYPE_NAME ;;
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

  dimension: mcd_adjust_type_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.MCD_ADJUST_TYPE_WID ;;
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

  dimension: src_sys_adjust_type_code {
    type: number
    sql: ${TABLE}.SRC_SYS_ADJUST_TYPE_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      adjust_type_desc,
      adjust_type_name,
      date_created_time,
      date_updated_time,
      mcd_adjust_type_wid,
      run_id,
      source_system_id,
      src_sys_adjust_type_code
    ]
  }
}
