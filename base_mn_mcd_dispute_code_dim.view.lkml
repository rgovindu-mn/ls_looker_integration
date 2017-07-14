view: mn_mcd_dispute_code_dim {

  sql_table_name: MN_MCD_DISPUTE_CODE_DIM_VW ;;



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

  dimension: dispute_code_desc {
    type: string
    sql: ${TABLE}.DISPUTE_CODE_DESC ;;
  }

  dimension: dispute_code_name {
    type: string
    primary_key: yes
    sql: ${TABLE}.DISPUTE_CODE_NAME ;;
  }

  dimension: mcd_dispute_code_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.MCD_DISPUTE_CODE_WID ;;
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

  dimension: src_sys_dispute_code_code {
    type: number
    sql: ${TABLE}.SRC_SYS_DISPUTE_CODE_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      date_created_time,
      date_updated_time,
      dispute_code_desc,
      dispute_code_name,
      mcd_dispute_code_wid,
      run_id,
      source_system_id,
      src_sys_dispute_code_code
    ]
  }
}