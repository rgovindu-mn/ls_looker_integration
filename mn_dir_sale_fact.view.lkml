view: mn_dir_sale_fact {
  sql_table_name: LSETLDM.MN_DIR_SALE_FACT ;;

  dimension: adm_fee_amt {
    type: string
    sql: ${TABLE}.ADM_FEE_AMT ;;
  }

  dimension: adm_fee_amt_base {
    type: string
    sql: ${TABLE}.ADM_FEE_AMT_BASE ;;
  }

  dimension: approved_date_wid {
    type: string
    sql: ${TABLE}.APPROVED_DATE_WID ;;
  }

  dimension: backward_ref_id {
    type: string
    sql: ${TABLE}.BACKWARD_REF_ID ;;
  }

  dimension: base_price {
    type: string
    sql: ${TABLE}.BASE_PRICE ;;
  }

  dimension: base_price_base {
    type: string
    sql: ${TABLE}.BASE_PRICE_BASE ;;
  }

  dimension: basic_rbt_amt {
    type: string
    sql: ${TABLE}.BASIC_RBT_AMT ;;
  }

  dimension: basic_rbt_amt_base {
    type: string
    sql: ${TABLE}.BASIC_RBT_AMT_BASE ;;
  }

  dimension: bill_to_customer_wid {
    type: string
    sql: ${TABLE}.BILL_TO_CUSTOMER_WID ;;
  }

  dimension: calculate_rebate_flag {
    type: string
    sql: ${TABLE}.CALCULATE_REBATE_FLAG ;;
  }

  dimension: cap_fgval {
    type: string
    sql: ${TABLE}.CAP_FGVAL ;;
  }

  dimension: close_date_wid {
    type: string
    sql: ${TABLE}.CLOSE_DATE_WID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.COMMENTS ;;
  }

  dimension: contract_amt {
    type: string
    sql: ${TABLE}.CONTRACT_AMT ;;
  }

  dimension: contract_amt_base {
    type: string
    sql: ${TABLE}.CONTRACT_AMT_BASE ;;
  }

  dimension: contract_wid {
    type: string
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: cot_wid {
    type: string
    sql: ${TABLE}.COT_WID ;;
  }

  dimension: custom_type1_wid {
    type: string
    sql: ${TABLE}.CUSTOM_TYPE1_WID ;;
  }

  dimension: custom_type2_wid {
    type: string
    sql: ${TABLE}.CUSTOM_TYPE2_WID ;;
  }

  dimension: custom_type3_wid {
    type: string
    sql: ${TABLE}.CUSTOM_TYPE3_WID ;;
  }

  dimension: customer_wid {
    type: string
    sql: ${TABLE}.CUSTOMER_WID ;;
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

  dimension: deal_doc_wid {
    type: string
    sql: ${TABLE}.DEAL_DOC_WID ;;
  }

  dimension: discount1 {
    type: string
    sql: ${TABLE}.DISCOUNT1 ;;
  }

  dimension: discount1_base {
    type: string
    sql: ${TABLE}.DISCOUNT1_BASE ;;
  }

  dimension: discount2 {
    type: string
    sql: ${TABLE}.DISCOUNT2 ;;
  }

  dimension: discount2_base {
    type: string
    sql: ${TABLE}.DISCOUNT2_BASE ;;
  }

  dimension: dist_srvs_fee_amt {
    type: string
    sql: ${TABLE}.DIST_SRVS_FEE_AMT ;;
  }

  dimension: dist_srvs_fee_amt_base {
    type: string
    sql: ${TABLE}.DIST_SRVS_FEE_AMT_BASE ;;
  }

  dimension: duplicate_of {
    type: string
    sql: ${TABLE}.DUPLICATE_OF ;;
  }

  dimension: exchange_rate {
    type: string
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: external_contract_id {
    type: string
    sql: ${TABLE}.EXTERNAL_CONTRACT_ID ;;
  }

  dimension: external_inv_amt {
    type: string
    sql: ${TABLE}.EXTERNAL_INV_AMT ;;
  }

  dimension: external_inv_amt_base {
    type: string
    sql: ${TABLE}.EXTERNAL_INV_AMT_BASE ;;
  }

  dimension: external_inv_date {
    type: string
    sql: ${TABLE}.EXTERNAL_INV_DATE ;;
  }

  dimension: external_inv_uom {
    type: string
    sql: ${TABLE}.EXTERNAL_INV_UOM ;;
  }

  dimension: external_invoice_qty {
    type: string
    sql: ${TABLE}.EXTERNAL_INVOICE_QTY ;;
  }

  dimension: external_item_id {
    type: string
    sql: ${TABLE}.EXTERNAL_ITEM_ID ;;
  }

  dimension: external_line_ref_id {
    type: string
    sql: ${TABLE}.EXTERNAL_LINE_REF_ID ;;
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
    type: string
    sql: ${TABLE}.EXTRACTION_DATE_WID ;;
  }

  dimension: fee_for_srvs_amt {
    type: string
    sql: ${TABLE}.FEE_FOR_SRVS_AMT ;;
  }

  dimension: fee_for_srvs_amt_base {
    type: string
    sql: ${TABLE}.FEE_FOR_SRVS_AMT_BASE ;;
  }

  dimension: forward_ref_id {
    type: string
    sql: ${TABLE}.FORWARD_REF_ID ;;
  }

  dimension: free_good_amt {
    type: string
    sql: ${TABLE}.FREE_GOOD_AMT ;;
  }

  dimension: free_good_amt_base {
    type: string
    sql: ${TABLE}.FREE_GOOD_AMT_BASE ;;
  }

  dimension: free_good_type {
    type: string
    sql: ${TABLE}.FREE_GOOD_TYPE ;;
  }

  dimension: gpo_wid {
    type: string
    sql: ${TABLE}.GPO_WID ;;
  }

  dimension: idn_wid {
    type: string
    sql: ${TABLE}.IDN_WID ;;
  }

  dimension: internal_line_id {
    type: string
    sql: ${TABLE}.INTERNAL_LINE_ID ;;
  }

  dimension: inv_amt {
    type: string
    sql: ${TABLE}.INV_AMT ;;
  }

  dimension: inv_amt_base {
    type: string
    sql: ${TABLE}.INV_AMT_BASE ;;
  }

  dimension: inv_date_wid {
    type: string
    sql: ${TABLE}.INV_DATE_WID ;;
  }

  dimension: inv_qty {
    type: string
    sql: ${TABLE}.INV_QTY ;;
  }

  dimension: inv_uom {
    type: string
    sql: ${TABLE}.INV_UOM ;;
  }

  dimension: ir_rbt_amt {
    type: string
    sql: ${TABLE}.IR_RBT_AMT ;;
  }

  dimension: ir_rbt_amt_base {
    type: string
    sql: ${TABLE}.IR_RBT_AMT_BASE ;;
  }

  dimension: lifecycle_status {
    type: string
    sql: ${TABLE}.LIFECYCLE_STATUS ;;
  }

  dimension: lifecycle_status_name {
    type: string
    sql: ${TABLE}.LIFECYCLE_STATUS_NAME ;;
  }

  dimension: line_ref_num {
    type: string
    sql: ${TABLE}.LINE_REF_NUM ;;
  }

  dimension: line_severity {
    type: string
    sql: ${TABLE}.LINE_SEVERITY ;;
  }

  dimension: line_severity_name {
    type: string
    sql: ${TABLE}.LINE_SEVERITY_NAME ;;
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
    sql: ${TABLE}.LOAD_DATE ;;
  }

  dimension: load_date_wid {
    type: string
    sql: ${TABLE}.LOAD_DATE_WID ;;
  }

  dimension: org_wid {
    type: string
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: paid_date_wid {
    type: string
    sql: ${TABLE}.PAID_DATE_WID ;;
  }

  dimension: pg_commit_wid {
    type: string
    sql: ${TABLE}.PG_COMMIT_WID ;;
  }

  dimension: pg_wid {
    type: string
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: prc_condition_code1 {
    type: string
    sql: ${TABLE}.PRC_CONDITION_CODE1 ;;
  }

  dimension: prc_condition_code2 {
    type: string
    sql: ${TABLE}.PRC_CONDITION_CODE2 ;;
  }

  dimension: process_date_wid {
    type: string
    sql: ${TABLE}.PROCESS_DATE_WID ;;
  }

  dimension: product_wid {
    type: string
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: prompt_pay_discount {
    type: string
    sql: ${TABLE}.PROMPT_PAY_DISCOUNT ;;
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.REASON_CODE ;;
  }

  dimension: reason_code_name {
    type: string
    sql: ${TABLE}.REASON_CODE_NAME ;;
  }

  dimension_group: received {
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
    sql: ${TABLE}.RECEIVED_DATE ;;
  }

  dimension: received_date_wid {
    type: string
    sql: ${TABLE}.RECEIVED_DATE_WID ;;
  }

  dimension: request_date_wid {
    type: string
    sql: ${TABLE}.REQUEST_DATE_WID ;;
  }

  dimension: resub_type {
    type: string
    sql: ${TABLE}.RESUB_TYPE ;;
  }

  dimension: resub_type_name {
    type: string
    sql: ${TABLE}.RESUB_TYPE_NAME ;;
  }

  dimension: reversal_status {
    type: string
    sql: ${TABLE}.REVERSAL_STATUS ;;
  }

  dimension: reversal_status_name {
    type: string
    sql: ${TABLE}.REVERSAL_STATUS_NAME ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: sale_curr {
    type: string
    sql: ${TABLE}.SALE_CURR ;;
  }

  dimension: sale_workflow_step {
    type: string
    sql: ${TABLE}.SALE_WORKFLOW_STEP ;;
  }

  dimension: sale_workflow_step_name {
    type: string
    sql: ${TABLE}.SALE_WORKFLOW_STEP_NAME ;;
  }

  dimension: ship_to_customer_wid {
    type: string
    sql: ${TABLE}.SHIP_TO_CUSTOMER_WID ;;
  }

  dimension: sold_to_customer_wid {
    type: string
    sql: ${TABLE}.SOLD_TO_CUSTOMER_WID ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension_group: src_model {
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
    sql: ${TABLE}.SRC_MODEL_DATE ;;
  }

  dimension: src_sys_commit_id {
    type: string
    sql: ${TABLE}.SRC_SYS_COMMIT_ID ;;
  }

  dimension: status_num_rbt {
    type: string
    sql: ${TABLE}.STATUS_NUM_RBT ;;
  }

  dimension_group: sub_close {
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
    sql: ${TABLE}.SUB_CLOSE_DATE ;;
  }

  dimension: sub_close_date_wid {
    type: string
    sql: ${TABLE}.SUB_CLOSE_DATE_WID ;;
  }

  dimension: submission_num {
    type: string
    sql: ${TABLE}.SUBMISSION_NUM ;;
  }

  dimension: tier_idx {
    type: string
    sql: ${TABLE}.TIER_IDX ;;
  }

  dimension: total_rbt_amt {
    type: string
    sql: ${TABLE}.TOTAL_RBT_AMT ;;
  }

  dimension: total_rbt_amt_base {
    type: string
    sql: ${TABLE}.TOTAL_RBT_AMT_BASE ;;
  }

  dimension: transaction_date_wid {
    type: string
    sql: ${TABLE}.TRANSACTION_DATE_WID ;;
  }

  dimension_group: wf_step_date_upd {
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
    sql: ${TABLE}.WF_STEP_DATE_UPD ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      sale_workflow_step_name,
      resub_type_name,
      reversal_status_name,
      lifecycle_status_name,
      line_severity_name,
      reason_code_name
    ]
  }
}
