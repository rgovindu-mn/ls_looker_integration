view: mn_rebate_payment_package_dim {
  sql_table_name: MN_PAYMENT_PACKAGE_DIM_VW ;;

  measure: count {
    type: count
    drill_fields: [pymt_pkg_name, pymt_pkg_status, pymt_pkg_type]
  }

  dimension: analyst_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ANALYST_WID ;;
  }

  dimension: contract_type {
    type: string
    sql: ${TABLE}.CONTRACT_TYPE ;;
  }

  dimension: contract_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_TYPE_WID ;;
  }

  dimension: contract_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: created_by_user_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CREATED_BY_USER_WID ;;
  }

  dimension_group: created_on_date {
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
    type: time
    sql: ${TABLE}.CREATED_ON_DATE ;;
  }

  dimension: created_on_date_wid {
    hidden: yes
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
    type: time
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
    type: time
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: effective_timezone {
    type: string
    sql: ${TABLE}.EFFECTIVE_TIMEZONE ;;
  }

  dimension: last_modified_by_user_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.LAST_MODIFIED_BY_USER_WID ;;
  }

  dimension_group: last_modified_on_date {
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
    type: time
    sql: ${TABLE}.LAST_MODIFIED_ON_DATE ;;
  }

  dimension: last_modified_on_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.LAST_MODIFIED_ON_DATE_WID ;;
  }

  dimension: org_unit_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ORG_UNIT_WID ;;
  }

  dimension_group: paid_date {
    type: time
    sql: ${TABLE}.PAID_DATE ;;
  }

  dimension: paid_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PAID_DATE_WID ;;
  }

  dimension: payee_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PAYEE_WID ;;
  }

  dimension_group: pymt_issued_date {
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
    type: time
    sql: ${TABLE}.PYMT_ISSUED_DATE ;;
  }

  dimension: pymt_issued_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PYMT_ISSUED_DATE_WID ;;
  }

  dimension: pymt_method_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PYMT_METHOD_WID ;;
  }

  dimension_group: pymt_needed_by_date {
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
    type: time
    sql: ${TABLE}.PYMT_NEEDED_BY_DATE ;;
  }

  dimension: pymt_needed_by_date_wid {
    hidden: yes
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
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.PYMT_PKG_WID ;;
  }

  dimension_group: pymt_rqst_sent_on_date {
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
    type: time
    sql: ${TABLE}.PYMT_RQST_SENT_ON_DATE ;;
  }

  dimension: pymt_rqst_sent_on_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PYMT_RQST_SENT_ON_DATE_WID ;;
  }

  dimension: rebate_period_end_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.REBATE_PERIOD_END_DATE_WID ;;
  }

  dimension_group: released_date {
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
    type: time
    sql: ${TABLE}.RELEASED_DATE ;;
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

  dimension: src_sys_mgr_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_pk_id {
    type: string
    sql: ${TABLE}.SRC_SYS_PK_ID ;;
  }

  dimension: src_sys_pymt_pkg_id {
    type: string
    sql: ${TABLE}.SRC_SYS_PYMT_PKG_ID ;;
  }

  dimension: total_estimated_pmt_amt {
    type: number
    sql: ${TABLE}.TOTAL_ESTIMATED_PMT_AMT ;;
  }

  dimension: total_estimated_pmt_amt_curr {
    type: number
    sql: ${TABLE}.TOTAL_ESTIMATED_PMT_AMT_CURR ;;
  }

  dimension: total_pmt_amt {
    type: number
    sql: ${TABLE}.TOTAL_PMT_AMT ;;
  }

  dimension: total_pmt_amt_curr {
    type: number
    sql: ${TABLE}.TOTAL_PMT_AMT_CURR ;;
  }
}
