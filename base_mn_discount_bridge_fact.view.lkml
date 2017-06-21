view: mn_discount_bridge_fact {
  sql_table_name: MN_DISCOUNT_BRIDGE_FACT_VW ;;

  dimension: bill_to_customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.BILL_TO_CUSTOMER_WID ;;
  }

  dimension: cs_line_ref_num {
    type: string
    sql: ${TABLE}.CS_LINE_REF_NUM ;;
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

  dimension: ds_line_ref_num {
    type: string
    sql: ${TABLE}.DS_LINE_REF_NUM ;;
  }

  dimension: estimate_pmt_flag {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_FLAG ;;
  }

  dimension: estimate_qty {
    type: string
    sql: ${TABLE}.ESTIMATE_QTY ;;
  }

  dimension: exchange_rate {
    type: string
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: ext_bd_id {
    hidden: yes
    type: string
    sql: ${TABLE}.EXT_BD_ID ;;
  }

  dimension: external_contract_id {
    hidden: yes
    type: string
    sql: ${TABLE}.EXTERNAL_CONTRACT_ID ;;
  }

  dimension: external_currency {
    type: string
    sql: ${TABLE}.EXTERNAL_CURRENCY ;;
  }

  dimension: external_inv_amt {
    type: string
    sql: ${TABLE}.EXTERNAL_INV_AMT ;;
  }

  dimension: external_inv_uom {
    type: string
    sql: ${TABLE}.EXTERNAL_INV_UOM ;;
  }

  dimension: external_invoice_qty {
    type: string
    sql: ${TABLE}.EXTERNAL_INVOICE_QTY ;;
  }

  dimension: external_line_ref_id {
    type: string
    sql: ${TABLE}.EXTERNAL_LINE_REF_ID ;;
  }

  dimension: external_line_type {
    type: string
    sql: ${TABLE}.EXTERNAL_LINE_TYPE ;;
  }

  dimension: external_org_id {
    type: string
    sql: ${TABLE}.EXTERNAL_ORG_ID ;;
  }

  dimension_group: external_paid {
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
    sql: ${TABLE}.EXTERNAL_PAID_DATE ;;
  }

  dimension: external_paid_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.EXTERNAL_PAID_DATE_WID ;;
  }

  dimension: external_ref_id {
    type: string
    sql: ${TABLE}.EXTERNAL_REF_ID ;;
  }

  dimension_group: extraction {
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
    sql: ${TABLE}.EXTRACTION_DATE ;;
  }

  dimension: extraction_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.EXTRACTION_DATE_WID ;;
  }

  dimension: ids_line_ref_num {
    type: string
    sql: ${TABLE}.IDS_LINE_REF_NUM ;;
  }

  dimension: inclusion_type {
    type: string
    sql: ${TABLE}.INCLUSION_TYPE ;;
  }

  dimension: inv_amt {
    type: string
    sql: ${TABLE}.INV_AMT ;;
  }

  dimension: inv_amt_base {
    type: string
    sql: ${TABLE}.INV_AMT_BASE ;;
  }

  dimension: inv_amt_curr {
    type: string
    sql: ${TABLE}.INV_AMT_CURR ;;
  }

  dimension: inv_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.INV_DATE_WID ;;
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
    sql: to_date(${TABLE}.INV_DATE_WID,'yyyymmdd') ;;
  }

  dimension: inv_qty {
    type: string
    sql: ${TABLE}.INV_QTY ;;
  }

  dimension: is_historical_flag {
    type: string
    sql: ${TABLE}.IS_HISTORICAL_FLAG ;;
  }

  dimension: mcd_claim_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.MCD_CLAIM_WID ;;
  }

  dimension: mcd_line_ref_num {
    type: string
    sql: ${TABLE}.MCD_LINE_REF_NUM ;;
  }

  dimension: mcd_payment_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.MCD_PAYMENT_WID ;;
  }

  dimension: mco_line_ref_num {
    type: string
    sql: ${TABLE}.MCO_LINE_REF_NUM ;;
  }

  dimension: orig_ref_num {
    type: string
    sql: ${TABLE}.ORIG_REF_NUM ;;
  }

  dimension: original_inv_qty {
    type: string
    sql: ${TABLE}.ORIGINAL_INV_QTY ;;
  }

  dimension: original_inv_uom {
    type: string
    sql: ${TABLE}.ORIGINAL_INV_UOM ;;
  }

  dimension: paid_amt {
    type: string
    sql: ${TABLE}.PAID_AMT ;;
  }

  dimension: paid_amt_base {
    type: string
    sql: ${TABLE}.PAID_AMT_BASE ;;
  }

  dimension: paid_amt_curr {
    type: string
    sql: ${TABLE}.PAID_AMT_CURR ;;
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

  dimension: plan_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PLAN_WID ;;
  }

  dimension_group: payment_end {
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
    sql: ${TABLE}.PAYMENT_END_DATE ;;
  }

  dimension_group: payment_start {
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
    sql: ${TABLE}.PAYMENT_START_DATE ;;
  }

  dimension: product_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: pub_util_id {
    type: number
    sql: ${TABLE}.PUB_UTIL_ID ;;
  }

  dimension: rebate_line_ref_num {
    type: string
    sql: ${TABLE}.REBATE_LINE_REF_NUM ;;
  }

  dimension: rebate_module_type {
    type: string
    sql: ${TABLE}.REBATE_MODULE_TYPE ;;
  }

  dimension: rebate_pmt_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.REBATE_PMT_WID ;;
  }

  dimension: rebate_reversal_status {
    type: string
    sql: ${TABLE}.REBATE_REVERSAL_STATUS ;;
  }

  dimension: rebate_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.REBATE_TYPE_WID ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: ship_to_customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.SHIP_TO_CUSTOMER_WID ;;
  }

  dimension: sold_to_customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.SOLD_TO_CUSTOMER_WID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_bucket_line_id {
    type: string
    sql: ${TABLE}.SRC_SYS_BUCKET_LINE_ID ;;
  }

  dimension: src_sys_est_payment_li_id {
    type: string
    sql: ${TABLE}.SRC_SYS_EST_PAYMENT_LI_ID ;;
  }

  dimension: src_sys_est_plan_id {
    type: string
    sql: ${TABLE}.SRC_SYS_EST_PLAN_ID ;;
  }

  dimension: wac_amt {
    type: string
    sql: ${TABLE}.WAC_AMT ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }

  measure: total_rebate_line_paid_amount {
    type: sum
    label: "Total Benefit Line Paid Amount"
    value_format_name: decimal_0
    sql: ${paid_amt} ;;
  }

  measure: external_invoive_amount {
    type: sum
    value_format_name: decimal_0
    sql: ${external_inv_amt} ;;
  }

  measure: total_external_invoice_quantity {
    type: sum
    value_format_name: decimal_0
    sql: ${external_invoice_qty} ;;
  }
}
