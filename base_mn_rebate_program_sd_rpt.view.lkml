view: mn_rebate_program_sd_rpt {

  sql_table_name: mn_rebate_program_sd_rpt_vw ;;

  label: "Rebate Program"

  dimension: accrual_customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ACCRU_CUST_WID ;;
  }

  dimension: rbt_strategy_rpt_wid {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.RBT_STRATEGY_RPT_WID ;;
  }

  dimension: accrual_rate {
    type: number
    sql: ${TABLE}.ACCRUAL_RATE ;;
  }

  dimension: accrual_type_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ACCRU_TYPE_WID ;;
  }

  dimension: contract_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension: non_standard_program {
    type: number
    sql: ${TABLE}.NON_STD_PROGRAM ;;
  }

  dimension: payee_customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PAYEE_CUSTOMER_WID ;;
  }

  dimension: payment_type_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PAYMENT_TYPE_WID ;;
  }

  dimension: pmt_mth_type_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PMT_MTH_TYPE_WID ;;
  }

  dimension: program_type_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_TYPE_WID ;;
  }

  dimension: program_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: program_late_date_lag {
    type: number
    sql: ${TABLE}.LATE_DATE_LAG ;;
  }

  dimension: program_market_basket_type {
    type: number
    sql: ${TABLE}.MARKET_BASKET_TYPE ;;
  }

  dimension: program_number_of_tiers {
    type: number
    sql: ${TABLE}.NUM_TIERS ;;
  }

  dimension: program_order_index {
    type: number
    sql: ${TABLE}.ORDER_IDX ;;
  }

  dimension: program_payment_customer_type {
    type: number
    sql: ${TABLE}.PAYMENT_CUST_TYPE ;;
  }


  dimension: program_payment_level {
    type: number
    sql: ${TABLE}.PAYMENT_LEVEL ;;
  }


  dimension: program_processing_date_lag {
    type: number
    sql: ${TABLE}.PROCESSING_DATE_LAG ;;
  }


  dimension: program_name {
    type: number
    sql: ${TABLE}.PROGRAM_NAME ;;
  }


  dimension: program_qualification_method {
    type: number
    sql: ${TABLE}.QUAL_METHOD ;;
  }


  dimension: program_rx_norm_method {
    type: number
    sql: ${TABLE}.RX_NORM_METHOD ;;
  }


  dimension: program_sale_line_from {
    type: number
    sql: ${TABLE}.SALE_LINE_FROM ;;
  }


  dimension: program_sale_line_type {
    type: number
    sql: ${TABLE}.SALE_LINE_TYPE ;;
  }


  dimension: program_system_accrue {
    type: number
    sql: ${TABLE}.SYSTEM_ACCRUE ;;
  }


  dimension: program_tier_management_type {
    type: number
    sql: ${TABLE}.TIER_MGMT_TYPE ;;
  }


  dimension: program_utilization_type {
    type: number
    sql: ${TABLE}.UTIL_TYPE ;;
  }

  dimension_group: program_version_end_date {
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
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension_group: program_version_start_date {
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
    sql: ${TABLE}.VER_START_DATE ;;
  }

  dimension: source_system_manager_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [program_name]
  }
}
