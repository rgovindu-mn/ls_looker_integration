view: mn_mcd_payment_fact {
  sql_table_name: MN_MCD_PAYMENT_FACT_VW ;;

  dimension: approved_by_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.APPROVED_BY_WID ;;
  }

  dimension_group: approved_date {
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
    sql: ${TABLE}.APPROVED_DATE ;;
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

  dimension: mcd_payment_wid {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.MCD_PAYMENT_WID ;;
  }

  dimension: payee_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PAYEE_WID ;;
  }

  dimension_group: payment_check {
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
    sql: ${TABLE}.PAYMENT_CHECK_DATE ;;
  }

  dimension: payment_check_date_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.PAYMENT_CHECK_DATE_WID ;;
  }

  dimension_group: payment_check_mailed {
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
    sql: ${TABLE}.PAYMENT_CHECK_MAILED_DATE ;;
  }

  dimension: payment_check_mailed_date_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.PAYMENT_CHECK_MAILED_DATE_WID ;;
  }

  dimension: payment_check_num {
    type: string
    sql: ${TABLE}.PAYMENT_CHECK_NUM ;;
  }

  dimension_group: payment_check_request {
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
    sql: ${TABLE}.PAYMENT_CHECK_REQUEST_DATE ;;
  }

  dimension: payment_check_request_date_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.PAYMENT_CHECK_REQUEST_DATE_WID ;;
  }

  dimension: payment_interest_amt {
    type: number
    sql: ${TABLE}.PAYMENT_INTEREST_AMT ;;
  }

  dimension: payment_interest_amt_base {
    type: number
    sql: ${TABLE}.PAYMENT_INTEREST_AMT_BASE ;;
  }

  dimension: payment_num {
    type: string
    sql: ${TABLE}.PAYMENT_NUM ;;
  }

  dimension: payment_rebate_amt {
    type: number
    sql: ${TABLE}.PAYMENT_REBATE_AMT ;;
  }

  dimension: payment_rebate_amt_base {
    type: number
    sql: ${TABLE}.PAYMENT_REBATE_AMT_BASE ;;
  }

  dimension: payment_status {
    type: string
    sql: ${TABLE}.PAYMENT_STATUS ;;
  }

  dimension: payment_total_amt {
    type: number
    sql: ${TABLE}.PAYMENT_TOTAL_AMT ;;
  }

  dimension: payment_total_amt_base {
    type: number
    sql: ${TABLE}.PAYMENT_TOTAL_AMT_BASE ;;
  }

  dimension: payment_ver_num {
    type: number
    sql: ${TABLE}.PAYMENT_VER_NUM ;;
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

  dimension: src_sys_mcd_payment_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MCD_PAYMENT_ID ;;
  }

  dimension: src_sys_mgr_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_payee_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PAYEE_ID ;;
  }

  dimension: src_sys_pk_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PK_ID ;;
  }

  measure: count {
    type: count
  }
}
