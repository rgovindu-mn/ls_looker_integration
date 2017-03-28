view: mn_indir_sale_fact {
  sql_table_name: MN_INDIR_SALE_FACT_VW ;;

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

  dimension: ba_ref_num {
    type: string
    sql: ${TABLE}.BA_REF_NUM ;;
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

  dimension: branch_distr_wid {
    type: string
    sql: ${TABLE}.BRANCH_DISTR_WID ;;
  }

  dimension: calculate_rebate_flag {
    type: string
    sql: ${TABLE}.CALCULATE_REBATE_FLAG ;;
  }

  dimension: chargeback_flag {
    type: string
    sql: ${TABLE}.CHARGEBACK_FLAG ;;
  }

  dimension: chgbk_amt {
    type: string
    sql: ${TABLE}.CHGBK_AMT ;;
  }

  dimension: chgbk_amt_base {
    type: string
    sql: ${TABLE}.CHGBK_AMT_BASE ;;
  }

  dimension: chgbk_claim_wid {
    type: string
    sql: ${TABLE}.CHGBK_CLAIM_WID ;;
  }

  dimension_group: chgbk_close {
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
    sql: ${TABLE}.CHGBK_CLOSE_DATE ;;
  }

  dimension: chgbk_close_date_wid {
    type: string
    sql: ${TABLE}.CHGBK_CLOSE_DATE_WID ;;
  }

  dimension: close_date_wid {
    type: string
    sql: ${TABLE}.CLOSE_DATE_WID ;;
  }

  dimension: comment_to_wholesaler {
    type: string
    sql: ${TABLE}.COMMENT_TO_WHOLESALER ;;
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

  dimension: debit_memo {
    type: string
    sql: ${TABLE}.DEBIT_MEMO ;;
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

  dimension: distr_cost_amt {
    type: string
    sql: ${TABLE}.DISTR_COST_AMT ;;
  }

  dimension: distr_cost_amt_base {
    type: string
    sql: ${TABLE}.DISTR_COST_AMT_BASE ;;
  }

  dimension: duplicate_of {
    type: string
    sql: ${TABLE}.DUPLICATE_OF ;;
  }

  dimension: exchange_rate {
    type: string
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: ext_comment {
    type: string
    sql: ${TABLE}.EXT_COMMENT ;;
  }

  dimension_group: ext_par_distr_dbt_memo {
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
    sql: ${TABLE}.EXT_PAR_DISTR_DBT_MEMO_DATE ;;
  }

  dimension: ext_ship_to_cust1_id {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST1_ID ;;
  }

  dimension: ext_ship_to_cust1_refid_type {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST1_REFID_TYPE ;;
  }

  dimension: ext_ship_to_cust2_id {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST2_ID ;;
  }

  dimension: ext_ship_to_cust2_refid_type {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST2_REFID_TYPE ;;
  }

  dimension: ext_ship_to_cust3_id {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST3_ID ;;
  }

  dimension: ext_ship_to_cust3_refid_type {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST3_REFID_TYPE ;;
  }

  dimension: ext_ship_to_cust4_id {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST4_ID ;;
  }

  dimension: ext_ship_to_cust4_refid_type {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST4_REFID_TYPE ;;
  }

  dimension: ext_ship_to_cust_address {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST_ADDRESS ;;
  }

  dimension: ext_ship_to_cust_city {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST_CITY ;;
  }

  dimension: ext_ship_to_cust_country {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST_COUNTRY ;;
  }

  dimension: ext_ship_to_cust_name {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST_NAME ;;
  }

  dimension: ext_ship_to_cust_num {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST_NUM ;;
  }

  dimension: ext_ship_to_cust_refid_type {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST_REFID_TYPE ;;
  }

  dimension: ext_ship_to_cust_state {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST_STATE ;;
  }

  dimension: ext_ship_to_cust_zip {
    type: string
    sql: ${TABLE}.EXT_SHIP_TO_CUST_ZIP ;;
  }

  dimension: ext_sold_to_cust1_refid_type {
    type: string
    sql: ${TABLE}.EXT_SOLD_TO_CUST1_REFID_TYPE ;;
  }

  dimension: ext_sold_to_cust2_refid_type {
    type: string
    sql: ${TABLE}.EXT_SOLD_TO_CUST2_REFID_TYPE ;;
  }

  dimension: ext_sold_to_cust3_refid_type {
    type: string
    sql: ${TABLE}.EXT_SOLD_TO_CUST3_REFID_TYPE ;;
  }

  dimension: ext_sold_to_cust4_refid_type {
    type: string
    sql: ${TABLE}.EXT_SOLD_TO_CUST4_REFID_TYPE ;;
  }

  dimension: ext_sold_to_cust_refid_type {
    type: string
    sql: ${TABLE}.EXT_SOLD_TO_CUST_REFID_TYPE ;;
  }

  dimension: external_chgbk_amt {
    type: string
    sql: ${TABLE}.EXTERNAL_CHGBK_AMT ;;
  }

  dimension: external_chgbk_amt_base {
    type: string
    sql: ${TABLE}.EXTERNAL_CHGBK_AMT_BASE ;;
  }

  dimension: external_contract_amt {
    type: string
    sql: ${TABLE}.EXTERNAL_CONTRACT_AMT ;;
  }

  dimension: external_contract_amt_base {
    type: string
    sql: ${TABLE}.EXTERNAL_CONTRACT_AMT_BASE ;;
  }

  dimension: external_contract_id {
    type: string
    sql: ${TABLE}.EXTERNAL_CONTRACT_ID ;;
  }

  dimension: external_contract_qty {
    type: string
    sql: ${TABLE}.EXTERNAL_CONTRACT_QTY ;;
  }

  dimension: external_contract_uom {
    type: string
    sql: ${TABLE}.EXTERNAL_CONTRACT_UOM ;;
  }

  dimension: external_distr_cost_amt {
    type: string
    sql: ${TABLE}.EXTERNAL_DISTR_COST_AMT ;;
  }

  dimension: external_distr_cost_amt_base {
    type: string
    sql: ${TABLE}.EXTERNAL_DISTR_COST_AMT_BASE ;;
  }

  dimension: external_distr_cost_qty {
    type: string
    sql: ${TABLE}.EXTERNAL_DISTR_COST_QTY ;;
  }

  dimension: external_distr_cost_uom {
    type: string
    sql: ${TABLE}.EXTERNAL_DISTR_COST_UOM ;;
  }

  dimension: external_inv_amt {
    type: string
    sql: ${TABLE}.EXTERNAL_INV_AMT ;;
  }

  dimension: external_inv_amt_base {
    type: string
    sql: ${TABLE}.EXTERNAL_INV_AMT_BASE ;;
  }

  dimension: external_inv_uom {
    type: string
    sql: ${TABLE}.EXTERNAL_INV_UOM ;;
  }

  dimension: external_item_id {
    type: string
    sql: ${TABLE}.EXTERNAL_ITEM_ID ;;
  }

  dimension: external_line_ref_id {
    type: string
    sql: ${TABLE}.EXTERNAL_LINE_REF_ID ;;
  }

  dimension: external_line_type {
    type: string
    sql: ${TABLE}.EXTERNAL_LINE_TYPE ;;
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

  dimension: external_resub_type {
    type: string
    sql: ${TABLE}.EXTERNAL_RESUB_TYPE ;;
  }

  dimension: external_total_chgbk_amt {
    type: string
    sql: ${TABLE}.EXTERNAL_TOTAL_CHGBK_AMT ;;
  }

  dimension: external_total_chgbk_amt_base {
    type: string
    sql: ${TABLE}.EXTERNAL_TOTAL_CHGBK_AMT_BASE ;;
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

  dimension: gpo_wid {
    type: string
    sql: ${TABLE}.GPO_WID ;;
  }

  dimension: idn_wid {
    type: string
    sql: ${TABLE}.IDN_WID ;;
  }

  dimension_group: indir_sale_line_date_updated {
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
    sql: ${TABLE}.INDIR_SALE_LINE_DATE_UPDATED ;;
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

  dimension: override_appr_rebate_flag {
    type: string
    sql: ${TABLE}.OVERRIDE_APPR_REBATE_FLAG ;;
  }

  dimension: override_contract {
    type: string
    sql: ${TABLE}.OVERRIDE_CONTRACT ;;
  }

  dimension: override_customer_flag {
    type: string
    sql: ${TABLE}.OVERRIDE_CUSTOMER_FLAG ;;
  }

  dimension: override_product {
    type: string
    sql: ${TABLE}.OVERRIDE_PRODUCT ;;
  }

  dimension: paid_chgbk_amt {
    type: string
    sql: ${TABLE}.PAID_CHGBK_AMT ;;
  }

  dimension: paid_chgbk_amt_base {
    type: string
    sql: ${TABLE}.PAID_CHGBK_AMT_BASE ;;
  }

  dimension: paid_date_wid {
    type: string
    sql: ${TABLE}.PAID_DATE_WID ;;
  }

  dimension: parent_distr_wid {
    type: string
    sql: ${TABLE}.PARENT_DISTR_WID ;;
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

  dimension: resub_line_ref_num {
    type: string
    sql: ${TABLE}.RESUB_LINE_REF_NUM ;;
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

  dimension: split_from_submission_num {
    type: string
    sql: ${TABLE}.SPLIT_FROM_SUBMISSION_NUM ;;
  }

  dimension: split_to_submission_num {
    type: string
    sql: ${TABLE}.SPLIT_TO_SUBMISSION_NUM ;;
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

  dimension: status_num_chgb {
    type: string
    sql: ${TABLE}.STATUS_NUM_CHGB ;;
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

  dimension: total_appr_rebate {
    type: string
    sql: ${TABLE}.TOTAL_APPR_REBATE ;;
  }

  dimension: total_chgbk_amt {
    type: string
    sql: ${TABLE}.TOTAL_CHGBK_AMT ;;
  }

  dimension: total_chgbk_amt_base {
    type: string
    sql: ${TABLE}.TOTAL_CHGBK_AMT_BASE ;;
  }

  dimension: total_discrepancy_amt {
    type: string
    sql: ${TABLE}.TOTAL_DISCREPANCY_AMT ;;
  }

  dimension: total_discrepancy_amt_base {
    type: string
    sql: ${TABLE}.TOTAL_DISCREPANCY_AMT_BASE ;;
  }

  dimension: total_distr_cost_amt {
    type: string
    sql: ${TABLE}.TOTAL_DISTR_COST_AMT ;;
  }

  dimension: total_distr_cost_amt_base {
    type: string
    sql: ${TABLE}.TOTAL_DISTR_COST_AMT_BASE ;;
  }

  dimension: total_rbt_amt {
    type: string
    sql: ${TABLE}.TOTAL_RBT_AMT ;;
  }

  dimension: total_rbt_amt_base {
    type: string
    sql: ${TABLE}.TOTAL_RBT_AMT_BASE ;;
  }

  dimension: tracing_flag {
    type: string
    sql: ${TABLE}.TRACING_FLAG ;;
  }

  dimension: transaction_date_wid {
    type: string
    sql: ${TABLE}.TRANSACTION_DATE_WID ;;
  }

  dimension: validation_message {
    type: string
    sql: ${TABLE}.VALIDATION_MESSAGE ;;
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
      lifecycle_status_name,
      reversal_status_name,
      line_severity_name,
      sale_workflow_step_name,
      reason_code_name,
      resub_type_name,
      ext_ship_to_cust_name
    ]
  }
}
