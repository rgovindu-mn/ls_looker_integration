view: mn_rebate_payment_fact {
  sql_table_name: MN_REBATE_PAYMENT_FACT_VW ;;

  dimension: accrued_customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ACCRUED_CUSTOMER_WID ;;
  }

  dimension: analyst_user_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ANALYST_USER_WID ;;
  }

  dimension: commited_customer_wid {
    type: number
    hidden: yes
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
    type: number
    hidden: yes
    sql: ${TABLE}.CONTRACT_TYPE_WID ;;
  }

  dimension: contract_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
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
    type: number
    hidden: yes
    sql: ${TABLE}.END_DATE_WID ;;
  }

  dimension_group: end {
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
    sql: to_date(${TABLE}.END_DATE_WID,'yyyymmdd') ;;
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

  dimension: net_due_amount {
    type: number
    sql: ${TABLE}.NET_DUE_AMT ;;
  }

  dimension: net_due_amount_base {
    type: number
    sql: ${TABLE}.NET_DUE_AMT_BASE ;;
  }

  dimension: net_due_currency {
    type: string
    sql: ${TABLE}.NET_DUE_CUR ;;
  }

  dimension: org_wid {
    type:  number
    hidden: yes
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
    type: number
    hidden: yes
    sql: ${TABLE}.PAID_DATE_WID ;;
  }

  dimension: payment_program_id {
    type: string
    sql: ${TABLE}.PAY_PROG_ID_NUM ;;
  }

  dimension: pay_program_name {
    type: string
    sql: ${TABLE}.PAY_PROG_NAME ;;
  }

  dimension: payment_program_status {
    type: string
    hidden: yes
    sql: ${TABLE}.PAY_PROG_STATUS ;;
  }

  dimension: payment_program_status_name {
    type: string
    sql: ${TABLE}.PAY_PROG_STATUS_NAME ;;
  }

  dimension: payee_customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PAYEE_CUSTOMER_WID ;;
  }

  dimension: payment_amount {
    type: string
    sql: ${TABLE}.PAYMENT_AMT ;;
  }

  dimension: payment_amount_base {
    type: string
    sql: ${TABLE}.PAYMENT_AMT_BASE ;;
  }

  dimension: payment_amount_currency {
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
    type: number
    hidden: yes
    sql: ${TABLE}.PMT_DUE_STATUS_DATE_WID ;;
  }

  dimension: payment_priority {
    type: string
    sql: ${TABLE}.PMT_PRIORITY ;;
  }

  dimension: payment_status {
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

  dimension: program_analyst_user_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PROG_ANALYST_USER_WID ;;
  }

  dimension: pymt_pkg_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PYMT_PKG_WID ;;
  }

  dimension: qualification_status {
    type: string
    sql: ${TABLE}.QUAL_STATUS ;;
  }

  dimension: rebate_due_amount {
    type: string
    sql: ${TABLE}.REBATE_DUE_AMT ;;
  }

  dimension: rebate_due_amount_base {
    type: string
    sql: ${TABLE}.REBATE_DUE_AMT_BASE ;;
  }

  dimension: rebate_due_currency {
    type: string
    sql: ${TABLE}.REBATE_DUE_CUR ;;
  }

  dimension: rebate_payment_id {
    type: string
    sql: ${TABLE}.REBATE_PMT_ID_NUM ;;
  }

  dimension: rebate_pmt_wid {
    primary_key: yes
    type: number
    hidden: yes
    sql: ${TABLE}.REBATE_PMT_WID ;;
  }

  dimension: rebate_program_wid {
    type: number
    hidden: yes
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

  dimension: reversed_due_amount {
    type: number
    sql: ${TABLE}.REVERSED_DUE_AMT ;;
  }

  dimension: reversed_due_amount_base {
    type: number
    sql: ${TABLE}.REVERSED_DUE_AMT_BASE ;;
  }

  dimension: reversed_due_amount_currency {
    type: number
    sql: ${TABLE}.REVERSED_DUE_AMT_CURR ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: salesrep_user_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.SALESREP_USER_WID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_mgr_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_rebate_payment_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_REBATE_PAYMENT_ID ;;
  }

  dimension: start_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.START_DATE_WID ;;
  }

  dimension_group: start {
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
    sql: to_date(${TABLE}.START_DATE_WID,'yyyymmdd') ;;
  }

  dimension: tier_applied {
    type: string
    sql: ${TABLE}.TIER_APPLIED ;;
  }

  dimension: tier_attained {
    type: number
    sql: ${TABLE}.TIER_ATTAINED ;;
  }

  dimension: total_accrued_amt {
    type: number
    sql: ${TABLE}.TOTAL_ACCRUED_AMT ;;
  }

  dimension: total_accrued_amount_base {
    type: number
    sql: ${TABLE}.TOTAL_ACCRUED_AMT_BASE ;;
  }

  dimension: total_accrued_amount_currency {
    type: string
    sql: ${TABLE}.TOTAL_ACCRUED_AMT_CUR ;;
  }

  measure: count {
    type: count
    drill_fields: [payment_program_status_name, pay_program_name, name]
  }

  measure: total_net_due_amount {
    type: sum
    value_format_name: decimal_0
    sql: ${net_due_amount} ;;
  }

  measure: total_net_due_base_amount {
    type: sum
    value_format_name: decimal_0
    sql: ${net_due_amount_base} ;;
  }

  measure: total_rebate_due_amount {
    type: sum
    value_format_name: decimal_0
    sql: ${rebate_due_amount} ;;
  }

  measure: total_rebate_due_base_amount {
    type: sum
    value_format_name: decimal_0
    sql: ${rebate_due_amount_base} ;;
  }

  measure: total_accrued_amount {
    type: sum
    value_format_name: decimal_0
    sql: ${total_accrued_amt} ;;
  }

  measure: total_accrued_base_amount {
    type: sum
    value_format_name: decimal_0
    sql: ${total_accrued_amount_base} ;;
  }
}
