view: base_mn_mcd_claim_pmt_payee_map {

sql_table_name: MN_MCD_CLAIM_PMT_PAYEE_MAP_VW ;;

  dimension: claim_addtl_int_amt {
    type: number
    sql: ${TABLE}.CLAIM_ADDTL_INT_AMT ;;
  }

  dimension: claim_addtl_int_amt_base {
    type: number
    sql: ${TABLE}.CLAIM_ADDTL_INT_AMT_BASE ;;
  }

  dimension: claim_applied_credit_amt {
    type: number
    sql: ${TABLE}.CLAIM_APPLIED_CREDIT_AMT ;;
  }

  dimension: claim_applied_credit_amt_base {
    type: number
    sql: ${TABLE}.CLAIM_APPLIED_CREDIT_AMT_BASE ;;
  }

  dimension: claim_applied_int_amt {
    type: number
    sql: ${TABLE}.CLAIM_APPLIED_INT_AMT ;;
  }

  dimension: claim_applied_int_amt_base {
    type: number
    sql: ${TABLE}.CLAIM_APPLIED_INT_AMT_BASE ;;
  }

  dimension: claim_interest_amt {
    type: number
    sql: ${TABLE}.CLAIM_INTEREST_AMT ;;
  }

  dimension: claim_interest_amt_base {
    type: number
    sql: ${TABLE}.CLAIM_INTEREST_AMT_BASE ;;
  }

  dimension: claim_int_addtl_int_amt {
    type: number
    sql: ${TABLE}.CLAIM_INT_ADDTL_INT_AMT ;;
  }

  dimension: claim_int_addtl_int_amt_base {
    type: number
    sql: ${TABLE}.CLAIM_INT_ADDTL_INT_AMT_BASE ;;
  }

  dimension: claim_payment_curr {
    type: string
    sql: ${TABLE}.CLAIM_PAYMENT_CURR ;;
  }

  dimension: claim_payment_type {
    type: string
    sql: ${TABLE}.CLAIM_PAYMENT_TYPE ;;
  }

  dimension: claim_state_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CLAIM_STATE_WID ;;
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

  dimension: mcd_claim_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.MCD_CLAIM_WID ;;
  }

  dimension: mcd_payment_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.MCD_PAYMENT_WID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      claim_addtl_int_amt,
      claim_addtl_int_amt_base,
      claim_applied_credit_amt,
      claim_applied_credit_amt_base,
      claim_applied_int_amt,
      claim_applied_int_amt_base,
      claim_interest_amt,
      claim_interest_amt_base,
      claim_int_addtl_int_amt,
      claim_int_addtl_int_amt_base,
      claim_payment_curr,
      claim_payment_type,
      claim_state_wid,
      date_updated_time,
      mcd_claim_wid,
      mcd_payment_wid
    ]
  }
}
