view: base_mn_mcd_claim_line_fact {
  sql_table_name: MN_MCD_CLAIM_LINE_FACT_VW ;;

  dimension: adjust_type {
    type: number
    sql: ${TABLE}.ADJUST_TYPE ;;
  }

  dimension: amp_price {
    type: number
    sql: ${TABLE}.AMP_PRICE ;;
  }

  dimension: amp_price_base {
    type: number
    sql: ${TABLE}.AMP_PRICE_BASE ;;
  }

  dimension: asp_price {
    type: number
    sql: ${TABLE}.ASP_PRICE ;;
  }

  dimension: asp_price_base {
    type: number
    sql: ${TABLE}.ASP_PRICE_BASE ;;
  }

  dimension: bp_price {
    type: number
    sql: ${TABLE}.BP_PRICE ;;
  }

  dimension: bp_price_base {
    type: number
    sql: ${TABLE}.BP_PRICE_BASE ;;
  }

  dimension: calc_ura {
    type: number
    sql: ${TABLE}.CALC_URA ;;
  }

  dimension: calc_ura_base {
    type: number
    sql: ${TABLE}.CALC_URA_BASE ;;
  }

  dimension: claim_line_curr {
    type: string
    sql: ${TABLE}.CLAIM_LINE_CURR ;;
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

  dimension: dismissed_amount {
    type: number
    sql: ${TABLE}.DISMISSED_AMOUNT ;;
  }

  dimension: dism_units {
    type: number
    sql: ${TABLE}.DISM_UNITS ;;
  }

  dimension: disputed_amount {
    type: number
    sql: ${TABLE}.DISPUTED_AMOUNT ;;
  }

  dimension: disp_codes {
    type: number
    sql: ${TABLE}.DISP_CODES ;;
  }

  dimension: disp_units {
    type: number
    sql: ${TABLE}.DISP_UNITS ;;
  }

  dimension: end_qtr_awp_price {
    type: number
    sql: ${TABLE}.END_QTR_AWP_PRICE ;;
  }

  dimension: end_qtr_awp_price_base {
    type: number
    sql: ${TABLE}.END_QTR_AWP_PRICE_BASE ;;
  }

  dimension: end_qtr_wac_price {
    type: number
    sql: ${TABLE}.END_QTR_WAC_PRICE ;;
  }

  dimension: end_qtr_wac_price_base {
    type: number
    sql: ${TABLE}.END_QTR_WAC_PRICE_BASE ;;
  }

  dimension: incr_units {
    type: number
    sql: ${TABLE}.INCR_UNITS ;;
  }

  dimension: inf_corr_codes {
    type: number
    sql: ${TABLE}.INF_CORR_CODES ;;
  }

  dimension: inf_corr_req_rebate_amt {
    type: number
    sql: ${TABLE}.INF_CORR_REQ_REBATE_AMT ;;
  }

  dimension: inf_corr_units {
    type: number
    sql: ${TABLE}.INF_CORR_UNITS ;;
  }

  dimension: inv_rebate_amt {
    type: number
    sql: ${TABLE}.INV_REBATE_AMT ;;
  }

  dimension: inv_rebate_amt_base {
    type: number
    sql: ${TABLE}.INV_REBATE_AMT_BASE ;;
  }

  dimension: inv_reimburse_amt {
    type: number
    sql: ${TABLE}.INV_REIMBURSE_AMT ;;
  }

  dimension: inv_reimburse_amt_base {
    type: number
    sql: ${TABLE}.INV_REIMBURSE_AMT_BASE ;;
  }

  dimension: inv_scripts_num {
    type: number
    sql: ${TABLE}.INV_SCRIPTS_NUM ;;
  }

  dimension: inv_tpl_amt {
    type: number
    sql: ${TABLE}.INV_TPL_AMT ;;
  }

  dimension: inv_tpl_amt_base {
    type: number
    sql: ${TABLE}.INV_TPL_AMT_BASE ;;
  }

  dimension: inv_units {
    type: number
    sql: ${TABLE}.INV_UNITS ;;
  }

  dimension: inv_ura {
    type: number
    sql: ${TABLE}.INV_URA ;;
  }

  dimension: inv_ura_base {
    type: number
    sql: ${TABLE}.INV_URA_BASE ;;
  }

  dimension: mcd_claim_line_wid {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.MCD_CLAIM_LINE_WID ;;
  }

  dimension: mcd_claim_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.MCD_CLAIM_WID ;;
  }

  dimension: mcd_program_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.MCD_PROGRAM_WID ;;
  }

  dimension: open_dispute_amt {
    type: number
    sql: ${TABLE}.OPEN_DISPUTE_AMT ;;
  }

  dimension: open_dispute_units {
    type: number
    sql: ${TABLE}.OPEN_DISPUTE_UNITS ;;
  }

  dimension: original_corrected_amt {
    type: number
    sql: ${TABLE}.ORIGINAL_CORRECTED_AMT ;;
  }

  dimension: override_ura {
    type: number
    sql: ${TABLE}.OVERRIDE_URA ;;
  }

  dimension: override_ura_base {
    type: number
    sql: ${TABLE}.OVERRIDE_URA_BASE ;;
  }

  dimension: paid_units {
    type: number
    sql: ${TABLE}.PAID_UNITS ;;
  }

  dimension: payee_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PAYEE_WID ;;
  }

  dimension: pending_amount {
    type: number
    sql: ${TABLE}.PENDING_AMOUNT ;;
  }

  dimension: pending_units {
    type: number
    sql: ${TABLE}.PENDING_UNITS ;;
  }

  dimension: prev_disp_units {
    type: number
    sql: ${TABLE}.PREV_DISP_UNITS ;;
  }

  dimension: prev_inv_units {
    type: number
    sql: ${TABLE}.PREV_INV_UNITS ;;
  }

  dimension: prev_paid_units {
    type: number
    sql: ${TABLE}.PREV_PAID_UNITS ;;
  }

  dimension: prev_ura {
    type: number
    sql: ${TABLE}.PREV_URA ;;
  }

  dimension: prev_ura_curr {
    type: string
    sql: ${TABLE}.PREV_URA_CURR ;;
  }

  dimension: product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: program_prod_end_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_PROD_END_DATE_WID ;;
  }

  dimension_group: program_prod_end {
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
    sql: to_date(${program_prod_end_date_wid},'yyyymmdd') ;;
  }

  dimension: program_prod_end_qtr {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_PROD_END_QTR ;;
  }

  dimension: program_prod_formula_def {
    type: string
    sql: ${TABLE}.PROGRAM_PROD_FORMULA_DEF ;;
  }

  dimension: program_prod_formula_name {
    type: string
    sql: ${TABLE}.PROGRAM_PROD_FORMULA_NAME ;;
  }

  dimension: program_prod_formula_type {
    type: string
    sql: ${TABLE}.PROGRAM_PROD_FORMULA_TYPE ;;
  }

  dimension: program_prod_start_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_PROD_START_DATE_WID ;;
  }

  dimension_group: program_prod_start {
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
    sql: to_date(${program_prod_start_date_wid},'yyyymmdd') ;;
  }

  dimension: program_prod_start_qtr {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_PROD_START_QTR ;;
  }

  dimension: rebate_due_amt {
    type: number
    sql: ${TABLE}.REBATE_DUE_AMT ;;
  }

  dimension: rebate_due_amt_base {
    type: number
    sql: ${TABLE}.REBATE_DUE_AMT_BASE ;;
  }

  dimension: recom_disp_units {
    type: number
    sql: ${TABLE}.RECOM_DISP_UNITS ;;
  }

  dimension: record_id {
    type: string
    hidden: yes
    sql: ${TABLE}.RECORD_ID ;;
  }

  dimension: resolved_amount {
    type: number
    sql: ${TABLE}.RESOLVED_AMOUNT ;;
  }

  dimension: resv_units {
    type: number
    sql: ${TABLE}.RESV_UNITS ;;
  }

  dimension: row_deleted_flag {
    type: string
    sql: ${TABLE}.ROW_DELETED_FLAG ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_claim_line_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CLAIM_LINE_ID ;;
  }

  dimension: start_qtr_awp_price {
    type: number
    sql: ${TABLE}.START_QTR_AWP_PRICE ;;
  }

  dimension: start_qtr_awp_price_base {
    type: number
    sql: ${TABLE}.START_QTR_AWP_PRICE_BASE ;;
  }

  dimension: start_qtr_wac_price {
    type: number
    sql: ${TABLE}.START_QTR_WAC_PRICE ;;
  }

  dimension: start_qtr_wac_price_base {
    type: number
    sql: ${TABLE}.START_QTR_WAC_PRICE_BASE ;;
  }

  dimension: total_paid_amt {
    type: number
    sql: ${TABLE}.TOTAL_PAID_AMT ;;
  }

  dimension: ura_price_list_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.URA_PRICE_LIST_WID ;;
  }

  measure: count {
    type: count
  }
}
