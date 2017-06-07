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
    type: string
    sql: ${TABLE}.ERP_PMT_DATE_WID ;;
  }

  dimension: erp_pmt_id_num {
    type: string
    sql: ${TABLE}.ERP_PMT_ID_NUM ;;
  }

  dimension: erp_pmt_method {
    type: string
    sql: ${TABLE}.ERP_PMT_METHOD ;;
  }

  dimension: erp_pmt_type {
    type: string
    sql: ${TABLE}.ERP_PMT_TYPE ;;
  }

  dimension: erp_pmt_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ERP_PMT_WID ;;
  }

  dimension_group: erp_process {
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
    type: string
    sql: ${TABLE}.ERP_PROCESS_DATE_WID ;;
  }

  dimension: estimate_pmt_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_WID ;;
  }

  dimension: payee_customer_wid {
    hidden: yes
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

  dimension: payment_amt_curr {
    type: string
    sql: ${TABLE}.PAYMENT_AMT_CURR ;;
  }

  dimension: pkg_id_num {
    type: string
    sql: ${TABLE}.PKG_ID_NUM ;;
  }

  dimension: rebate_pmt_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.REBATE_PMT_WID ;;
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

  dimension: src_sys_erp_payment_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_ERP_PAYMENT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
