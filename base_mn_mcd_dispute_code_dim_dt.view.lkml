view: mn_mcd_dispute_code_dim_dt {
  derived_table: {
    sql: SELECT DISTINCT DISPUTE_CODE_NAME,INF_CORR_CODES,SRC_SYS_DISPUTE_CODE_CODE FROM MN_MCD_CLAIM_LINE_FACT_VW CLF
      CROSS JOIN MN_MCD_DISPUTE_CODE_DIM_VW MCDDISP WHERE
      BITAND(CLF.INF_CORR_CODES, MCDDISP.SRC_SYS_DISPUTE_CODE_CODE) = MCDDISP.SRC_SYS_DISPUTE_CODE_CODE
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: dispute_code_name {
    type: string
    sql: ${TABLE}.DISPUTE_CODE_NAME ;;
  }

  dimension: inf_corr_codes {
    type: string
    sql: ${TABLE}.INF_CORR_CODES ;;
  }

  dimension: src_sys_dispute_code_code {
    type: string
    sql: ${TABLE}.SRC_SYS_DISPUTE_CODE_CODE ;;
  }

  set: detail {
    fields: [dispute_code_name, inf_corr_codes, src_sys_dispute_code_code]
  }
}
