view: mn_erp_payment_fact {
  sql_table_name: MN_ERP_PAYMENT_FACT_VW ;;

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

  dimension_group: erp_pmt {
    label: "ERP Payment"
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
    sql: ${TABLE}.ERP_PMT_DATE ;;
  }

  dimension: erp_pmt_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ERP_PMT_DATE_WID ;;
  }

  dimension: erp_pmt_id_num {
    type: string
    label: "ERP Payment ID"
    sql: ${TABLE}.ERP_PMT_ID_NUM ;;
  }

  dimension: erp_pmt_method {
    type: string
    label: "ERP Payment Method"
    sql: ${TABLE}.ERP_PMT_METHOD ;;
  }

  dimension: erp_pmt_type {
    type: string
    label: "ERP Payment Type"
    sql: ${TABLE}.ERP_PMT_TYPE ;;
  }

  dimension: erp_pmt_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.ERP_PMT_WID ;;
  }

  dimension_group: erp_process {
    label: "ERP Process"
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
    sql: ${TABLE}.ERP_PROCESS_DATE ;;
  }

  dimension: erp_process_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ERP_PROCESS_DATE_WID ;;
  }

  dimension: estimate_pmt_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ESTIMATE_PMT_WID ;;
  }

  dimension: payee_customer_wid {
    hidden: yes
    type: number
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
    sql: ${TABLE}.PAYMENT_AMT_CURR ;;
  }

  dimension: pkg_id_num {
    type: string
    label: "ERP Package ID"
    sql: ${TABLE}.PKG_ID_NUM ;;
  }

  dimension: rebate_pmt_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.REBATE_PMT_WID ;;
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

  dimension: src_sys_erp_payment_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_ERP_PAYMENT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_erp_payment_amount {
    type: sum
    label: "ERP Payment Amount"
    value_format_name: decimal_0
    sql: ${payment_amount} ;;
  }

}
