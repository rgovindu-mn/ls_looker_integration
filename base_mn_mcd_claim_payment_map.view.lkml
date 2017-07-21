view: mn_mcd_claim_payment_map {
    sql_table_name: MN_MCD_CLAIM_PAYMENT_MAP_VW ;;

  dimension: carry_forward_amount {
    type: number
    sql: ${TABLE}.CARRY_FORWARD_AMOUNT ;;
  }

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

  dimension: claim_int_addtl_int_amt {
    type: number
    sql: ${TABLE}.CLAIM_INT_ADDTL_INT_AMT ;;
  }

  dimension: claim_int_addtl_int_amt_base {
    type: number
    sql: ${TABLE}.CLAIM_INT_ADDTL_INT_AMT_BASE ;;
  }

  dimension: claim_interest_amt {
    type: number
    sql: ${TABLE}.CLAIM_INTEREST_AMT ;;
  }

  dimension: claim_interest_amt_base {
    type: number
    sql: ${TABLE}.CLAIM_INTEREST_AMT_BASE ;;
  }

  dimension: claim_payment_curr {
    type: string
    sql: ${TABLE}.CLAIM_PAYMENT_CURR ;;
  }

  dimension: claim_payment_type {
    type: string
    sql: ${TABLE}.CLAIM_PAYMENT_TYPE ;;
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

  dimension: mcd_claim_payment_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.MCD_CLAIM_PAYMENT_WID ;;
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

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_mcd_claim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MCD_CLAIM_ID ;;
  }

  dimension: src_sys_mcd_claim_payment_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MCD_CLAIM_PAYMENT_ID ;;
  }

  dimension: src_sys_mcd_payment_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MCD_PAYMENT_ID ;;
  }

#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }

  measure: total_carry_forward_amount {
    type: sum
    label: "Carry Forward Amount"
    value_format_name: usd
    sql: ${carry_forward_amount} ;;
  }

  set: detail {
    fields: [
      carry_forward_amount,
      claim_addtl_int_amt,
      claim_addtl_int_amt_base,
      claim_applied_credit_amt,
      claim_applied_credit_amt_base,
      claim_applied_int_amt,
      claim_applied_int_amt_base,
      claim_int_addtl_int_amt,
      claim_int_addtl_int_amt_base,
      claim_interest_amt,
      claim_interest_amt_base,
      claim_payment_curr,
      claim_payment_type,
      date_created_time,
      date_updated_time,
      mcd_claim_payment_wid,
      mcd_claim_wid,
      mcd_payment_wid,
      run_id,
      source_system_id,
      src_sys_mcd_claim_id,
      src_sys_mcd_claim_payment_id,
      src_sys_mcd_payment_id
    ]
  }
}
