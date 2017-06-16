view: mn_rebate_payment_fact {
  sql_table_name: MN_REBATE_PAYMENT_FACT ;;

  dimension: accrued_customer_wid {
    type: string
    sql: ${TABLE}.ACCRUED_CUSTOMER_WID ;;
  }

  dimension: analyst_user_wid {
    type: string
    sql: ${TABLE}.ANALYST_USER_WID ;;
  }

  dimension: commited_customer_wid {
    type: string
    sql: ${TABLE}.COMMITED_CUSTOMER_WID ;;
  }

  dimension: contract_erp_accrue_rate {
    type: string
    sql: ${TABLE}.CONTRACT_ERP_ACCRUE_RATE ;;
  }

  dimension: contract_erp_accrue_type {
    type: string
    sql: ${TABLE}.CONTRACT_ERP_ACCRUE_TYPE ;;
  }

  dimension: contract_type_wid {
    type: string
    sql: ${TABLE}.CONTRACT_TYPE_WID ;;
  }

  dimension: contract_wid {
    type: string
    sql: ${TABLE}.CONTRACT_WID ;;
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

  dimension_group: due_to_customer {
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
    sql: ${TABLE}.DUE_TO_CUSTOMER_DATE ;;
  }

  dimension: end_date_wid {
    type: string
    sql: ${TABLE}.END_DATE_WID ;;
  }

  dimension: erp_accrue {
    type: string
    sql: ${TABLE}.ERP_ACCRUE ;;
  }

  dimension: erp_accrue_rate {
    type: string
    sql: ${TABLE}.ERP_ACCRUE_RATE ;;
  }

  dimension: erp_accrue_type {
    type: string
    sql: ${TABLE}.ERP_ACCRUE_TYPE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: net_due_amt {
    type: string
    sql: ${TABLE}.NET_DUE_AMT ;;
  }

  dimension: net_due_amt_base {
    type: string
    sql: ${TABLE}.NET_DUE_AMT_BASE ;;
  }

  dimension: net_due_cur {
    type: string
    sql: ${TABLE}.NET_DUE_CUR ;;
  }

  dimension: org_wid {
    type: string
    sql: ${TABLE}.ORG_WID ;;
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
    type: string
    sql: ${TABLE}.PAID_DATE_WID ;;
  }

  dimension: pay_prog_id_num {
    type: string
    sql: ${TABLE}.PAY_PROG_ID_NUM ;;
  }

  dimension: pay_prog_name {
    type: string
    sql: ${TABLE}.PAY_PROG_NAME ;;
  }

  dimension: pay_prog_status {
    type: string
    sql: ${TABLE}.PAY_PROG_STATUS ;;
  }

  dimension: pay_prog_status_name {
    type: string
    sql: ${TABLE}.PAY_PROG_STATUS_NAME ;;
  }

  dimension: payee_customer_wid {
    type: string
    sql: ${TABLE}.PAYEE_CUSTOMER_WID ;;
  }

  dimension: payment_amt {
    type: string
    sql: ${TABLE}.PAYMENT_AMT ;;
  }

  dimension: payment_amt_base {
    type: string
    sql: ${TABLE}.PAYMENT_AMT_BASE ;;
  }

  dimension: payment_amt_cur {
    type: string
    sql: ${TABLE}.PAYMENT_AMT_CUR ;;
  }

  dimension_group: payment_due_status {
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
    sql: ${TABLE}.PAYMENT_DUE_STATUS_DATE ;;
  }

  dimension: pmt_due_status_date_wid {
    type: string
    sql: ${TABLE}.PMT_DUE_STATUS_DATE_WID ;;
  }

  dimension: pmt_priority {
    type: string
    sql: ${TABLE}.PMT_PRIORITY ;;
  }

  dimension: pmt_status {
    type: string
    sql: ${TABLE}.PMT_STATUS ;;
  }

  dimension_group: processing {
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
    sql: ${TABLE}.PROCESSING_DATE ;;
  }

  dimension: prog_analyst_user_wid {
    type: string
    sql: ${TABLE}.PROG_ANALYST_USER_WID ;;
  }

  dimension: pymt_pkg_wid {
    type: string
    sql: ${TABLE}.PYMT_PKG_WID ;;
  }

  dimension: qual_status {
    type: string
    sql: ${TABLE}.QUAL_STATUS ;;
  }

  dimension: rebate_due_amt {
    type: string
    sql: ${TABLE}.REBATE_DUE_AMT ;;
  }

  dimension: rebate_due_amt_base {
    type: string
    sql: ${TABLE}.REBATE_DUE_AMT_BASE ;;
  }

  dimension: rebate_due_cur {
    type: string
    sql: ${TABLE}.REBATE_DUE_CUR ;;
  }

  dimension: rebate_pmt_id_num {
    type: string
    sql: ${TABLE}.REBATE_PMT_ID_NUM ;;
  }

  dimension: rebate_pmt_wid {
    primary_key: yes
    type: string
    sql: ${TABLE}.REBATE_PMT_WID ;;
  }

  dimension: rebate_program_wid {
    type: string
    sql: ${TABLE}.REBATE_PROGRAM_WID ;;
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

  dimension: reversed_due_amt {
    type: string
    sql: ${TABLE}.REVERSED_DUE_AMT ;;
  }

  dimension: reversed_due_amt_base {
    type: string
    sql: ${TABLE}.REVERSED_DUE_AMT_BASE ;;
  }

  dimension: reversed_due_amt_curr {
    type: string
    sql: ${TABLE}.REVERSED_DUE_AMT_CURR ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: salesrep_user_wid {
    type: string
    sql: ${TABLE}.SALESREP_USER_WID ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_mgr_id {
    type: string
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_rebate_payment_id {
    type: string
    sql: ${TABLE}.SRC_SYS_REBATE_PAYMENT_ID ;;
  }

  dimension: start_date_wid {
    type: string
    sql: ${TABLE}.START_DATE_WID ;;
  }

  dimension: tier_applied {
    type: string
    sql: ${TABLE}.TIER_APPLIED ;;
  }

  dimension: tier_attained {
    type: string
    sql: ${TABLE}.TIER_ATTAINED ;;
  }

  dimension: total_accrued_amt {
    type: string
    sql: ${TABLE}.TOTAL_ACCRUED_AMT ;;
  }

  dimension: total_accrued_amt_base {
    type: string
    sql: ${TABLE}.TOTAL_ACCRUED_AMT_BASE ;;
  }

  dimension: total_accrued_amt_cur {
    type: string
    sql: ${TABLE}.TOTAL_ACCRUED_AMT_CUR ;;
  }

  measure: count {
    type: count
    drill_fields: [pay_prog_status_name, pay_prog_name, name]
  }

  measure: total_net_due_amount {
    type: sum
    value_format_name: decimal_0
    sql: ${net_due_amt} ;;
  }

  measure: total_net_due_base_amount {
    type: sum
    value_format_name: decimal_0
    sql: ${net_due_amt_base} ;;
  }

  measure: total_rebate_due_amount {
    type: sum
    value_format_name: decimal_0
    sql: ${rebate_due_amt} ;;
  }

  measure: total_rebate_due_base_amount {
    type: sum
    value_format_name: decimal_0
    sql: ${rebate_due_amt_base} ;;
  }

  measure: total_accrued_amount {
    type: sum
    value_format_name: decimal_0
    sql: ${total_accrued_amt} ;;
  }

  measure: total_accrued_base_amount {
    type: sum
    value_format_name: decimal_0
    sql: ${total_accrued_amt_base} ;;
  }
}
