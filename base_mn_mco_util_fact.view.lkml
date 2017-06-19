view: mn_mco_util_fact {

  sql_table_name: MN_MCO_UTIL_FACT_VW ;;

  dimension: access_rebate_amount {
    type: string
    sql: ${TABLE}.ACCESS_RBT_AMT ;;
  }

  dimension: access_rebate_amount_base {
    type: string
    sql: ${TABLE}.ACCESS_RBT_AMT_BASE ;;
  }

  dimension: base_rebate_amount {
    type: string
    sql: ${TABLE}.BASE_RBT_AMT ;;
  }

  dimension: base_rebate_amount_base {
    type: string
    sql: ${TABLE}.BASE_RBT_AMT_BASE ;;
  }

  dimension: bob_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.BOB_WID ;;
  }

  dimension: calculate_rebate_flag {
    type: string
    sql: ${TABLE}.CALCULATE_REBATE_FLAG ;;
  }

  dimension_group: closed {
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
    sql: to_date(${TABLE}.CLOSE_DATE_WID,'yyyymmdd') ;;
  }

  dimension: cms_quantity {
    type: string
    sql: ${TABLE}.CMS_QTY ;;
  }

  dimension: contract_cust_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_CUST_WID ;;
  }

  dimension: copay {
    type: string
    sql: ${TABLE}.COPAY ;;
  }

  dimension: copay_currency {
    type: string
    sql: ${TABLE}.COPAY_CURR ;;
  }

  dimension: cot_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.COT_WID ;;
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
    sql: to_date(${TABLE}.DATE_CREATED,'yyyymmdd') ;;
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
    sql: to_date(${TABLE}.DATE_UPDATED,'yyyymmdd') ;;
  }

  dimension: exchange_rate {
    type: string
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: ext_contract_id {
    hidden: yes
    type: string
    sql: ${TABLE}.EXT_CONTRACT_ID ;;
  }

  dimension: ext_flex_var11 {
    hidden: yes
    type: string
    sql: ${TABLE}.EXT_FLEX_VAR11 ;;
  }

  dimension: ext_flex_var12 {
    hidden: yes
    type: string
    sql: ${TABLE}.EXT_FLEX_VAR12 ;;
  }

  dimension: flex_num11 {
    type: string
    sql: ${TABLE}.FLEX_NUM11 ;;
  }

  dimension: flex_num12 {
    type: string
    sql: ${TABLE}.FLEX_NUM12 ;;
  }

  dimension: flex_var11 {
    type: string
    sql: ${TABLE}.FLEX_VAR11 ;;
  }

  dimension: flex_var12 {
    type: string
    sql: ${TABLE}.FLEX_VAR12 ;;
  }

  dimension: flex_var13 {
    type: string
    sql: ${TABLE}.FLEX_VAR13 ;;
  }

  dimension: flex_var14 {
    type: string
    sql: ${TABLE}.FLEX_VAR14 ;;
  }

  dimension: flex_var15 {
    type: string
    sql: ${TABLE}.FLEX_VAR15 ;;
  }

  dimension: flex_var16 {
    type: string
    sql: ${TABLE}.FLEX_VAR16 ;;
  }

  dimension: flex_var17 {
    type: string
    sql: ${TABLE}.FLEX_VAR17 ;;
  }

  dimension: flex_var18 {
    type: string
    sql: ${TABLE}.FLEX_VAR18 ;;
  }

  dimension: formulary_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.FORMULARY_WID ;;
  }

  dimension: list_price {
    type: string
    sql: ${TABLE}.LIST_PRICE ;;
  }

  dimension: list_price_base {
    type: string
    sql: ${TABLE}.LIST_PRICE_BASE ;;
  }

  dimension_group: load {
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
    sql: to_date(${TABLE}.LOAD_DATE_WID,'yyyymmdd') ;;
  }

  dimension: mail_ord_rebate_amount {
    type: string
    sql: ${TABLE}.MAIL_ORD_RBT_AMT ;;
  }

  dimension: mail_order_rebate_amount_base {
    type: string
    sql: ${TABLE}.MAIL_ORD_RBT_AMT_BASE ;;
  }

  dimension: mco_submission_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.MCO_SUBMISSION_WID ;;
  }

  dimension: admin_fee_amount {
    type: string
    sql: ${TABLE}.MC_ADMIN_FEE_AMT ;;
  }

  dimension: admin_fee_amount_base {
    type: string
    sql: ${TABLE}.MC_ADMIN_FEE_AMT_BASE ;;
  }

  dimension: months_per_period {
    type: string
    sql: ${TABLE}.MONTHS_PER_PERIOD ;;
  }

  dimension: ndc_quantity {
    type: string
    sql: ${TABLE}.NDC_QTY ;;
  }

  dimension: org_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: parent_pbm_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PARENT_PBM_WID ;;
  }

  dimension: pbm_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PBM_WID ;;
  }

  dimension: perf_rebate_amount {
    type: string
    sql: ${TABLE}.PERF_RBT_AMT ;;
  }

  dimension: perf_rebate_amount_base {
    type: string
    sql: ${TABLE}.PERF_RBT_AMT_BASE ;;
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
    sql: to_date(${TABLE}.PERIOD_END_DATE_WID,'yyyymmdd') ;;
  }

  dimension_group: period_start {
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
    sql: to_date(${TABLE}.PERIOD_START_DATE_WID,'yyyymmdd') ;;
  }

  dimension: plan_customer_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PLAN_CUSTOMER_WID ;;
  }

  dimension: plan_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PLAN_WID ;;
  }

  dimension: product_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: pub_util_id {
    type: string
    sql: ${TABLE}.PUB_UTIL_ID ;;
  }

  dimension: ref_line_id {
    type: string
    sql: ${TABLE}.REF_LINE_ID ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: rx_quantity {
    type: string
    sql: ${TABLE}.RX_QTY ;;
  }

  dimension: sale_currency {
    type: string
    sql: ${TABLE}.SALE_CURR ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: sponsor_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.SPONSOR_WID ;;
  }

  dimension: util_type {
    type: string
    sql: ${TABLE}.UTIL_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [ref_line_id]
  }

}