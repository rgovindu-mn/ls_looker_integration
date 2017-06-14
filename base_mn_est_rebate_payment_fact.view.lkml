view: mn_est_rebate_payment_fact {
  sql_table_name: MN_EST_REBATE_PAYMENT_FACT_VW ;;

  dimension_group: applied_due_customer {
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
    sql: ${TABLE}.APPLIED_DUE_CUSTOMER_DATE ;;
  }

  dimension_group: calc_due_customer {
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
    sql: ${TABLE}.CALC_DUE_CUSTOMER_DATE ;;
  }

  dimension: calculated_pmt_amt {
    type: string
    sql: ${TABLE}.CALCULATED_PMT_AMT ;;
  }

  dimension: calculated_pmt_amt_base {
    type: string
    sql: ${TABLE}.CALCULATED_PMT_AMT_BASE ;;
  }

  dimension: calculation_method_name {
    type: string
    sql: ${TABLE}.CALCULATION_METHOD_NAME ;;
  }

  dimension_group: claim_complete {
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
    sql: ${TABLE}.CLAIM_COMPLETE_DATE ;;
  }

  dimension_group: claim_due {
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
    sql: ${TABLE}.CLAIM_DUE_DATE ;;
  }

  dimension_group: claim_invoice {
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
    sql: ${TABLE}.CLAIM_INVOICE_DATE ;;
  }

  dimension_group: claim_postmark {
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
    sql: ${TABLE}.CLAIM_POSTMARK_DATE ;;
  }

  dimension_group: claim_received {
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
    sql: ${TABLE}.CLAIM_RECEIVED_DATE ;;
  }

  dimension: contract_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
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

  dimension: effective_timezone {
    type: string
    sql: ${TABLE}.EFFECTIVE_TIMEZONE ;;
  }

  dimension: erp_notes {
    type: string
    sql: ${TABLE}.ERP_NOTES ;;
  }

  dimension: estimate_amt {
    type: string
    sql: ${TABLE}.ESTIMATE_AMT ;;
  }

  dimension: estimate_amt_base {
    type: string
    sql: ${TABLE}.ESTIMATE_AMT_BASE ;;
  }

  dimension: estimate_pmt_amount {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_AMOUNT ;;
  }

  dimension: estimate_pmt_amount_base {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_AMOUNT_BASE ;;
  }

  dimension: estimate_pmt_id_num {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_ID_NUM ;;
  }

  dimension_group: estimate_pmt_issued {
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
    sql: ${TABLE}.ESTIMATE_PMT_ISSUED_DATE ;;
  }

  dimension: estimate_pmt_method {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_METHOD ;;
  }

  dimension: estimate_pmt_name {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_NAME ;;
  }

  dimension_group: estimate_pmt_needed_by {
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
    sql: ${TABLE}.ESTIMATE_PMT_NEEDED_BY_DATE ;;
  }

  dimension: estimate_pmt_number {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_NUMBER ;;
  }

  dimension: estimate_pmt_pct {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_PCT ;;
  }

  dimension: estimate_pmt_rate {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_RATE ;;
  }

  dimension_group: estimate_pmt_request_sent {
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
    sql: ${TABLE}.ESTIMATE_PMT_REQUEST_SENT_DATE ;;
  }

  dimension: estimate_pmt_status {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_STATUS ;;
  }

  dimension: estimate_pmt_sub_type {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_SUB_TYPE ;;
  }

  dimension: estimate_pmt_type {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_TYPE ;;
  }

  dimension: estimate_pmt_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_WID ;;
  }

  dimension: ext_pmt_type {
    type: string
    sql: ${TABLE}.EXT_PMT_TYPE ;;
  }

  dimension: internal_notes {
    type: string
    sql: ${TABLE}.INTERNAL_NOTES ;;
  }

  dimension_group: invoice {
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
    sql: ${TABLE}.INVOICE_DATE ;;
  }

  dimension_group: invoice_rcvd {
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
    sql: ${TABLE}.INVOICE_RCVD_DATE ;;
  }

  dimension: org_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: overridden_pmt_amt {
    type: string
    sql: ${TABLE}.OVERRIDDEN_PMT_AMT ;;
  }

  dimension: overridden_pmt_amt_base {
    type: string
    sql: ${TABLE}.OVERRIDDEN_PMT_AMT_BASE ;;
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

  dimension: payee_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PAYEE_WID ;;
  }

  dimension_group: period_end {
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
    sql: ${TABLE}.PERIOD_END_DATE ;;
  }

  dimension: period_end_date_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PERIOD_END_DATE_WID ;;
  }

  dimension_group: published {
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
    sql: ${TABLE}.PUBLISHED_DATE ;;
  }

  dimension: pymt_pkg_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PYMT_PKG_WID ;;
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

  dimension: requested_amt {
    type: string
    sql: ${TABLE}.REQUESTED_AMT ;;
  }

  dimension: requested_amt_base {
    type: string
    sql: ${TABLE}.REQUESTED_AMT_BASE ;;
  }

  dimension: rev_est_pmt_fk {
    type: string
    sql: ${TABLE}.REV_EST_PMT_FK ;;
  }

  dimension_group: rev_published {
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
    sql: ${TABLE}.REV_PUBLISHED_DATE ;;
  }

  dimension_group: reversed {
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
    sql: ${TABLE}.REVERSED_DATE ;;
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

  dimension: src_sys_contract_number {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_CONTRACT_NUMBER ;;
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

  dimension: src_sys_estimate_pmt_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_ESTIMATE_PMT_ID ;;
  }

  dimension: src_sys_org_unit_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_ORG_UNIT_ID ;;
  }

  dimension: src_sys_payee_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_PAYEE_ID ;;
  }

  dimension: src_sys_pmt_pkg_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_PMT_PKG_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [calculation_method_name, estimate_pmt_name]
  }

  measure: total_estimated_payment_amount_base {
    type: sum
    label: "Estimated Payment Amount"
    value_format_name: decimal_0
    sql: ${estimate_pmt_amount_base} ;;
  }

}
