view: mn_payment_package_dim {
  sql_table_name: MN_PAYMENT_PACKAGE_DIM_VW ;;

  dimension: analyst_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ANALYST_WID ;;
  }

  dimension: contract_type_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_TYPE_WID ;;
  }

  dimension: contract_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: created_by_user_wid {
    hidden: yes
    type: string
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
    hidden: yes
    type: string
    sql: ${TABLE}.CREATED_ON_DATE_WID ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      date
    ]
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: updated {
    hidden:yes
    type: time
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: effective_timezone {
    hidden: yes
    type: string
    sql: ${TABLE}.EFFECTIVE_TIMEZONE ;;
  }

  dimension: last_modified_by_user_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.LAST_MODIFIED_BY_USER_WID ;;
  }

  dimension_group: last_modified_on_date {
    hidden:yes
    type: time
    sql: ${TABLE}.LAST_MODIFIED_ON_DATE ;;
  }

  dimension: last_modified_on_date_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.LAST_MODIFIED_ON_DATE_WID ;;
  }

  dimension: org_unit_wid {
    hidden: yes
    type: string
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
    hidden: yes
    type: string
    sql: ${TABLE}.PAID_DATE_WID ;;
  }

  dimension: payee_wid {
    hidden: yes
    type: string
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
    label: "Payment Issued"
  }

  dimension: pymt_issued_date_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PYMT_ISSUED_DATE_WID ;;
  }

  dimension: pymt_method_wid {
    hidden: yes
    type: string
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
    label: "Payment Needed By"
  }

  dimension: pymt_needed_by_date_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PYMT_NEEDED_BY_DATE_WID ;;
  }

  dimension: pymt_number {
    type: string
    sql: ${TABLE}.PYMT_NUMBER ;;
    label: "Payment Number"
  }

  dimension: pymt_pkg_id {
    type: string
    sql: ${TABLE}.PYMT_PKG_ID_NUM ;;
    label: "Payment Package ID"
  }

  dimension: pymt_pkg_name {
    type: string
    sql: ${TABLE}.PYMT_PKG_NAME ;;
    label: "Payment Package Name"
  }

  dimension: pymt_pkg_status {
    type: string
    sql: ${TABLE}.PYMT_PKG_STATUS ;;
    label: "Payment Package Status"
  }

  dimension: pymt_pkg_type {
    type: string
    sql: ${TABLE}.PYMT_PKG_TYPE ;;
    label: "Payment Package Type"
  }

  dimension: pymt_pkg_wid {
    hidden: yes
    primary_key: yes
    type: string
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
    label: "Payment Request Sent On"
  }

  dimension: pymt_rqst_sent_on_date_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PYMT_RQST_SENT_ON_DATE_WID ;;
  }

  dimension: rebate_period_end_date_wid {
    hidden: yes
    type: string
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
    hidden: yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_mgr_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_pymt_pkg_id {
    type: string
    sql: ${TABLE}.SRC_SYS_PYMT_PKG_ID ;;
    label: "Source System Payment Package ID"
  }

  dimension: total_est_pmt_amt {
    hidden: yes
    type: string
    sql: ${TABLE}.TOTAL_ESTIMATED_PMT_AMT ;;
  }

  dimension: total_est_pmt_amt_curr {
    type: string
    label: "Estimated Payment Currency"
    sql: ${TABLE}.TOTAL_ESTIMATED_PMT_AMT_CURR ;;
  }

  dimension: total_pmt_amt {
    hidden: yes
    type: string
    sql: ${TABLE}.TOTAL_PMT_AMT ;;
  }

  dimension: total_pmt_amt_curr {
    type: string
    label: "Payment Currency"
    sql: ${TABLE}.TOTAL_PMT_AMT_CURR ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [pymt_pkg_wid]
  }

  measure: pymt_amt {
    type: sum
    label: "Total Payment Amount"
    value_format_name: decimal_0
    sql: ${total_pmt_amt} ;;
  }

  measure: est_pmt_amt {
    type: sum
    label: "Total Estimated Payment Amount"
    value_format_name: decimal_0
    sql: ${total_est_pmt_amt} ;;
  }

}
