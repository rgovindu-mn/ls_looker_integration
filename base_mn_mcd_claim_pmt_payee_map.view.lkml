view: mn_mcd_claim_pmt_payee_map {

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

  dimension: mcd_claim_payment_key {
    type: string
    label: "MCD Claim Payment Key"
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.mcd_claim_wid ||' '||${TABLE}.mcd_payment_wid;;
  }

#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }

  measure: claim_credit_applied {
    type: sum
    label: "Claim Credit Applied"
    value_format_name: usd
    sql: ${claim_applied_credit_amt} ;;
  }

  measure: claim_calculated_interest_amount {
    type: sum
    label: "Claim Calculated Interest Amount"
    value_format_name: usd
    sql: ${claim_interest_amt} ;;
  }

  measure: claim_applied_interest {
    type: sum
    label: "Claim Applied Interest"
    value_format_name: usd
    sql: ${claim_applied_int_amt} ;;
  }

  measure: claim_additional_interest {
    type: sum
    label: "Claim Additional Interest"
    value_format_name: usd
    sql: ${claim_addtl_int_amt} ;;
  }

  measure: claim_interest_on_additional_interest {
    type: sum
    label: "Claim Interest on Additional Interest"
    value_format_name: usd
    sql: ${claim_int_addtl_int_amt} ;;
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
