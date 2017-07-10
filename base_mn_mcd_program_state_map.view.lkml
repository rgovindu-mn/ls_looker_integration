view: base_mn_mcd_program_state_map {
 sql_table_name: MN_MCD_PROGRAM_STATE_MAP_VW ;;

  dimension: adjust_line_type {
    type: string
    sql: ${TABLE}.ADJUST_LINE_TYPE ;;
  }

  dimension: allows_negative_units {
    type: string
    sql: ${TABLE}.ALLOWS_NEGATIVE_UNITS ;;
  }

  dimension: analyst_wid {
    type: number
    sql: ${TABLE}.ANALYST_WID ;;
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

  dimension: dispute_units_rule {
    type: string
    sql: ${TABLE}.DISPUTE_UNITS_RULE ;;
  }

  dimension: end_cal_qtr {
    type: string
    sql: ${TABLE}.END_CAL_QTR ;;
  }

  dimension_group: end_date {
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
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: interest_paying {
    type: string
    sql: ${TABLE}.INTEREST_PAYING ;;
  }

  dimension: max_num_days {
    type: number
    sql: ${TABLE}.MAX_NUM_DAYS ;;
  }

  dimension: mcd_program_wid {
    type: number
    sql: ${TABLE}.MCD_PROGRAM_WID ;;
  }

  dimension: mcd_state {
    type: string
    sql: ${TABLE}.MCD_STATE ;;
  }

  dimension: mcd_state_cust_wid {
    type: number
    sql: ${TABLE}.MCD_STATE_CUST_WID ;;
  }

  dimension: mcd_state_short_desc {
    type: string
    sql: ${TABLE}.MCD_STATE_SHORT_DESC ;;
  }

  dimension: mfr_contact_wid {
    type: number
    sql: ${TABLE}.MFR_CONTACT_WID ;;
  }

  dimension: overdue_days {
    type: number
    sql: ${TABLE}.OVERDUE_DAYS ;;
  }

  dimension: payee_wid {
    type: number
    sql: ${TABLE}.PAYEE_WID ;;
  }

  dimension: run_id {
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_mcd_program_id {
    type: number
    sql: ${TABLE}.SRC_SYS_MCD_PROGRAM_ID ;;
  }

  dimension: start_cal_qtr {
    type: string
    sql: ${TABLE}.START_CAL_QTR ;;
  }

  dimension_group: start_date {
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
    sql: ${TABLE}.START_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      adjust_line_type,
      allows_negative_units,
      analyst_wid,
      date_created_time,
      date_updated_time,
      dispute_units_rule,
      end_cal_qtr,
      end_date_time,
      interest_paying,
      max_num_days,
      mcd_program_wid,
      mcd_state,
      mcd_state_cust_wid,
      mcd_state_short_desc,
      mfr_contact_wid,
      overdue_days,
      payee_wid,
      run_id,
      source_system_id,
      src_sys_mcd_program_id,
      start_cal_qtr,
      start_date_time
    ]
  }
}
