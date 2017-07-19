view: mn_mcd_claim_line_fact_dt {
  derived_table: {
    sql: SELECT MCDCLF.*,CLMD.STATE FROM MN_MCD_CLAIM_LINE_FACT_VW MCDCLF
          JOIN MN_MCD_CLAIM_DIM_VW CLMD ON CLMD.CLAIM_WID = MCDCLF.MCD_CLAIM_WID
       ;;
  }

  dimension: mcd_claim_line_wid {
    type: number
    label: "Claim Line Id"
    primary_key: yes
    sql: ${TABLE}.MCD_CLAIM_LINE_WID ;;
  }

  dimension: mcd_claim_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.MCD_CLAIM_WID ;;
  }

  dimension: product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: mcd_program_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.MCD_PROGRAM_WID ;;
  }

  dimension: ura_price_list_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.URA_PRICE_LIST_WID ;;
  }

  dimension: payee_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PAYEE_WID ;;
  }

  dimension: src_sys_claim_line_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CLAIM_LINE_ID ;;
  }

  dimension: calc_ura {
    type: number
    sql: ${TABLE}.CALC_URA ;;
  }

  dimension: calc_ura_base {
    type: number
    hidden: yes
    sql: ${TABLE}.CALC_URA_BASE ;;
  }

  dimension: claim_line_curr {
    type: number
    hidden: yes
    sql: ${TABLE}.CLAIM_LINE_CURR ;;
  }

  dimension: override_ura {
    type: number
    hidden: yes
    sql: ${TABLE}.OVERRIDE_URA ;;
  }

  dimension: override_ura_base {
    type: number
    hidden: yes
    sql: ${TABLE}.OVERRIDE_URA_BASE ;;
  }

  dimension: inv_units {
    type: number
        sql: ${TABLE}.INV_UNITS ;;
  }

  dimension: inv_rebate_amt {
    type: number
    sql: ${TABLE}.INV_REBATE_AMT ;;
  }

  dimension: inv_rebate_amt_base {
    type: number
    hidden: yes
    sql: ${TABLE}.INV_REBATE_AMT_BASE ;;
  }

  dimension: inv_ura {
    type: number
    sql: ${TABLE}.INV_URA ;;
  }

  dimension: inv_ura_base {
    type: number
    hidden: yes
    sql: ${TABLE}.INV_URA_BASE ;;
  }

  dimension: inv_scripts_num {
    type: number
    sql: ${TABLE}.INV_SCRIPTS_NUM ;;
  }

  dimension: inv_reimburse_amt {
    type: number
    sql: ${TABLE}.INV_REIMBURSE_AMT ;;
  }

  dimension: inv_reimburse_amt_base {
    type: number
    hidden: yes
    sql: ${TABLE}.INV_REIMBURSE_AMT_BASE ;;
  }

  dimension: inv_tpl_amt {
    type: number
    sql: ${TABLE}.INV_TPL_AMT ;;
  }

  dimension: inv_tpl_amt_base {
    type: number
    hidden: yes
    sql: ${TABLE}.INV_TPL_AMT_BASE ;;
  }

  dimension: recom_disp_units {
    type: number
    sql: ${TABLE}.RECOM_DISP_UNITS ;;
  }

  dimension: paid_units {
    type: number
    sql: ${TABLE}.PAID_UNITS ;;
  }

  dimension: rebate_due_amt {
    type: number
    sql: ${TABLE}.REBATE_DUE_AMT ;;
  }

  dimension: rebate_due_amt_base {
    type: number
    hidden: yes
    sql: ${TABLE}.REBATE_DUE_AMT_BASE ;;
  }

  dimension: disp_codes {
    type: number
    hidden: yes
    sql: ${TABLE}.DISP_CODES ;;
  }

  dimension: inf_corr_codes {
    type: number
    hidden: yes
    sql: ${TABLE}.INF_CORR_CODES ;;
  }

  dimension: adjust_type {
    type: number
    hidden: yes
    sql: ${TABLE}.ADJUST_TYPE ;;
  }

  dimension: incr_units {
    type: number
    sql: ${TABLE}.INCR_UNITS ;;
  }

  dimension: disp_units {
    type: number
    sql: ${TABLE}.DISP_UNITS ;;
  }

  dimension: dism_units {
    type: number
    sql: ${TABLE}.DISM_UNITS ;;
  }

  dimension: resv_units {
    type: number
    sql: ${TABLE}.RESV_UNITS ;;
  }

  dimension: prev_inv_units {
    type: number
    sql: ${TABLE}.PREV_INV_UNITS ;;
  }

  dimension: prev_paid_units {
    type: number
    sql: ${TABLE}.PREV_PAID_UNITS ;;
  }

  dimension: prev_disp_units {
    type: number
    sql: ${TABLE}.PREV_DISP_UNITS ;;
  }

  dimension: program_prod_start_date_wid {
    type: string
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
    sql: ${TABLE}.PROGRAM_PROD_START_QTR ;;
  }

  dimension: program_prod_end_date_wid {
    type: string
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
    sql: ${TABLE}.PROGRAM_PROD_END_QTR ;;
  }

  dimension: program_prod_formula_type {
    type: string
    sql: ${TABLE}.PROGRAM_PROD_FORMULA_TYPE ;;
  }

  dimension: program_prod_formula_def {
    type: string
    sql: ${TABLE}.PROGRAM_PROD_FORMULA_DEF ;;
  }

  dimension: amp_price {
    type: number
    label: "Average Manufacturer Price"
    sql: ${TABLE}.AMP_PRICE ;;
  }

  dimension: amp_price_base {
    type: number
    hidden: yes
    sql: ${TABLE}.AMP_PRICE_BASE ;;
  }

  dimension: bp_price {
    type: number
    label: "Base Price"
    sql: ${TABLE}.BP_PRICE ;;
  }

  dimension: bp_price_base {
    type: number
    hidden: yes
    sql: ${TABLE}.BP_PRICE_BASE ;;
  }

  dimension: asp_price {
    type: number
    label: "Average Selling Price"
    sql: ${TABLE}.ASP_PRICE ;;
  }

  dimension: asp_price_base {
    type: number
    hidden: yes
    sql: ${TABLE}.ASP_PRICE_BASE ;;
  }

  dimension: start_qtr_wac_price {
    type: number
    label: "WAC Price (start of quarter)"
    sql: ${TABLE}.START_QTR_WAC_PRICE ;;
  }

  dimension: start_qtr_wac_price_base {
    type: number
    hidden: yes
    sql: ${TABLE}.START_QTR_WAC_PRICE_BASE ;;
  }

  dimension: end_qtr_wac_price {
    type: number
    label: "WAC Price (end of quarter)"
    sql: ${TABLE}.END_QTR_WAC_PRICE ;;
  }

  dimension: end_qtr_wac_price_base {
    type: number
    hidden: yes
    sql: ${TABLE}.END_QTR_WAC_PRICE_BASE ;;
  }

  dimension: start_qtr_awp_price {
    type: number
    label: "AWP Price (start of quarter)"
    sql: ${TABLE}.START_QTR_AWP_PRICE ;;
  }

  dimension: start_qtr_awp_price_base {
    type: number
    hidden: yes
    sql: ${TABLE}.START_QTR_AWP_PRICE_BASE ;;
  }

  dimension: end_qtr_awp_price {
    type: number
    label: "AWP Price (end of quarter)"
    sql: ${TABLE}.END_QTR_AWP_PRICE ;;
  }

  dimension: end_qtr_awp_price_base {
    type: number
    hidden: yes
    sql: ${TABLE}.END_QTR_AWP_PRICE_BASE ;;
  }

  dimension: record_id {
    type: number
    sql: ${TABLE}.RECORD_ID ;;
  }

  dimension: source_system_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
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

  dimension: row_deleted_flag {
    type: string
    sql: ${TABLE}.ROW_DELETED_FLAG ;;
  }

  dimension: disputed_amount {
    type: number
    sql: ${TABLE}.DISPUTED_AMOUNT ;;
  }

  dimension: dismissed_amount {
    type: number
    sql: ${TABLE}.DISMISSED_AMOUNT ;;
  }

  dimension: resolved_amount {
    type: number
    sql: ${TABLE}.RESOLVED_AMOUNT ;;
  }

  dimension: inf_corr_req_rebate_amt {
    type: number
    sql: ${TABLE}.INF_CORR_REQ_REBATE_AMT ;;
  }

  dimension: inf_corr_units {
    type: number
    sql: ${TABLE}.INF_CORR_UNITS ;;
  }

  dimension: total_paid_amt {
    type: number
    sql: ${TABLE}.TOTAL_PAID_AMT ;;
  }

  dimension: original_corrected_amt {
    type: number
    sql: ${TABLE}.ORIGINAL_CORRECTED_AMT ;;
  }

  dimension: open_dispute_units {
    type: number
    sql: ${TABLE}.OPEN_DISPUTE_UNITS ;;
  }

  dimension: open_dispute_amt {
    type: number
    sql: ${TABLE}.OPEN_DISPUTE_AMT ;;
  }

  dimension: pending_units {
    type: number
    sql: ${TABLE}.PENDING_UNITS ;;
  }

  dimension: pending_amount {
    type: number
    sql: ${TABLE}.PENDING_AMOUNT ;;
  }

  dimension: program_prod_formula_name {
    type: string
    sql: ${TABLE}.PROGRAM_PROD_FORMULA_NAME ;;
  }

  dimension: prev_ura {
    type: number
    sql: ${TABLE}.PREV_URA ;;
  }

  dimension: prev_ura_curr {
    type: string
    sql: ${TABLE}.PREV_URA_CURR ;;
  }

  dimension: state {
    type: string
    hidden: yes
    sql: ${TABLE}.STATE ;;
  }

  dimension: state_short_desc {
    type: string
    label: "Claim State Short Description"
    hidden: yes
    sql: SUBSTR(${TABLE}.state,1,2) ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      mcd_claim_line_wid,
      mcd_claim_wid,
      product_wid,
      mcd_program_wid,
      ura_price_list_wid,
      payee_wid,
      src_sys_claim_line_id,
      calc_ura,
      calc_ura_base,
      claim_line_curr,
      override_ura,
      override_ura_base,
      inv_units,
      inv_rebate_amt,
      inv_rebate_amt_base,
      inv_ura,
      inv_ura_base,
      inv_scripts_num,
      inv_reimburse_amt,
      inv_reimburse_amt_base,
      inv_tpl_amt,
      inv_tpl_amt_base,
      recom_disp_units,
      paid_units,
      rebate_due_amt,
      rebate_due_amt_base,
      disp_codes,
      inf_corr_codes,
      adjust_type,
      incr_units,
      disp_units,
      dism_units,
      resv_units,
      prev_inv_units,
      prev_paid_units,
      prev_disp_units,
      program_prod_start_date_wid,
      program_prod_start_qtr,
      program_prod_end_date_wid,
      program_prod_end_qtr,
      program_prod_formula_type,
      program_prod_formula_def,
      amp_price,
      amp_price_base,
      bp_price,
      bp_price_base,
      asp_price,
      asp_price_base,
      start_qtr_wac_price,
      start_qtr_wac_price_base,
      end_qtr_wac_price,
      end_qtr_wac_price_base,
      start_qtr_awp_price,
      start_qtr_awp_price_base,
      end_qtr_awp_price,
      end_qtr_awp_price_base,
      record_id,
      source_system_id,
      run_id,
      date_created_time,
      date_updated_time,
      row_deleted_flag,
      disputed_amount,
      dismissed_amount,
      resolved_amount,
      inf_corr_req_rebate_amt,
      inf_corr_units,
      total_paid_amt,
      original_corrected_amt,
      open_dispute_units,
      open_dispute_amt,
      pending_units,
      pending_amount,
      program_prod_formula_name,
      prev_ura,
      prev_ura_curr,
      state
    ]
  }
}
