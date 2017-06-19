view: mn_payment_package_dim {
  sql_table_name: MN_PAYMENT_PACKAGE_DIM_VW ;;

  dimension: analyst_wid {
    type: number
    sql: ${TABLE}.ANALYST_WID ;;
  }

  dimension: contract_type_wid {
    type: number
    sql: ${TABLE}.CONTRACT_TYPE_WID ;;
  }

  dimension: contract_wid {
    type: number
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: created_by_user_wid {
    type: number
    sql: ${TABLE}.CREATED_BY_USER_WID ;;
  }

  dimension_group: created_on {
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
    sql: ${TABLE}.CREATED_ON_DATE ;;
  }

  dimension: created_on_date_wid {
    type: number
    sql: ${TABLE}.CREATED_ON_DATE_WID ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension_group: date_created {
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

  dimension: effective_timezone {
    type: string
    sql: ${TABLE}.EFFECTIVE_TIMEZONE ;;
  }

  dimension: last_modified_by_user_wid {
    type: number
    sql: ${TABLE}.LAST_MODIFIED_BY_USER_WID ;;
  }

  dimension_group: last_modified_on {
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
    sql: ${TABLE}.LAST_MODIFIED_ON_DATE ;;
  }

  dimension: last_modified_on_date_wid {
    type: number
    sql: ${TABLE}.LAST_MODIFIED_ON_DATE_WID ;;
  }

  dimension: org_unit_wid {
    type: number
    sql: ${TABLE}.ORG_UNIT_WID ;;
  }

  dimension_group: paid {
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
    sql: ${TABLE}.PAID_DATE ;;
  }

  dimension: paid_date_wid {
    type: number
    sql: ${TABLE}.PAID_DATE_WID ;;
  }

  dimension: payee_wid {
    type: number
    sql: ${TABLE}.PAYEE_WID ;;
  }

  dimension_group: pymt_issued {
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
    sql: ${TABLE}.PYMT_ISSUED_DATE ;;
  }

  dimension: pymt_issued_date_wid {
    type: number
    sql: ${TABLE}.PYMT_ISSUED_DATE_WID ;;
  }

  dimension: pymt_method_wid {
    type: number
    sql: ${TABLE}.PYMT_METHOD_WID ;;
  }

  dimension_group: pymt_needed_by {
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
    sql: ${TABLE}.PYMT_NEEDED_BY_DATE ;;
  }

  dimension: pymt_needed_by_date_wid {
    type: number
    sql: ${TABLE}.PYMT_NEEDED_BY_DATE_WID ;;
  }

  dimension: pymt_number {
    type: string
    sql: ${TABLE}.PYMT_NUMBER ;;
  }

  dimension: pymt_pkg_id_num {
    type: string
    sql: ${TABLE}.PYMT_PKG_ID_NUM ;;
  }

  dimension: pymt_pkg_name {
    type: string
    sql: ${TABLE}.PYMT_PKG_NAME ;;
  }

  dimension: pymt_pkg_status {
    type: string
    sql: ${TABLE}.PYMT_PKG_STATUS ;;
  }

  dimension: pymt_pkg_type {
    type: string
    sql: ${TABLE}.PYMT_PKG_TYPE ;;
  }

  dimension: pymt_pkg_wid {
    type: number
    sql: ${TABLE}.PYMT_PKG_WID ;;
  }

  dimension_group: pymt_rqst_sent_on {
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
    sql: ${TABLE}.PYMT_RQST_SENT_ON_DATE ;;
  }

  dimension: pymt_rqst_sent_on_date_wid {
    type: number
    sql: ${TABLE}.PYMT_RQST_SENT_ON_DATE_WID ;;
  }

  dimension: rebate_period_end_date_wid {
    type: number
    sql: ${TABLE}.REBATE_PERIOD_END_DATE_WID ;;
  }

  dimension_group: released {
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
    sql: ${TABLE}.RELEASED_DATE ;;
  }

  dimension: run_id {
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_mgr_id {
    type: string
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_pymt_pkg_id {
    type: string
    sql: ${TABLE}.SRC_SYS_PYMT_PKG_ID ;;
  }

  dimension: total_estimated_pmt_amt {
    type: string
    sql: ${TABLE}.TOTAL_ESTIMATED_PMT_AMT ;;
  }

  dimension: total_estimated_pmt_amt_curr {
    type: string
    sql: ${TABLE}.TOTAL_ESTIMATED_PMT_AMT_CURR ;;
  }

  dimension: total_pmt_amt {
    type: string
    sql: ${TABLE}.TOTAL_PMT_AMT ;;
  }

  dimension: total_pmt_amt_curr {
    type: string
    sql: ${TABLE}.TOTAL_PMT_AMT_CURR ;;
  }

  measure: count {
    type: count
    drill_fields: [pymt_pkg_name]
  }

  measure: total_payment_amount {
    type: sum
    value_format_name: decimal_0
    sql: ${total_pmt_amt} ;;
  }

  measure: total_estimated_payment_amount {
    type: sum
    value_format_name: decimal_0
    sql: ${total_estimated_pmt_amt} ;;
  }
}
