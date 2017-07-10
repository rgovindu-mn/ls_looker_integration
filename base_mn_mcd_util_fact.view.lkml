view: base_mn_mcd_util_fact {
  sql_table_name: MN_MCD_UTIL_FACT_VW ;;

  dimension: calculate_rebate_flag {
    type: number
    sql: ${TABLE}.CALCULATE_REBATE_FLAG ;;
  }

  dimension: calc_ura {
    type: number
    sql: ${TABLE}.CALC_URA ;;
  }

  dimension: calc_ura_base {
    type: number
    sql: ${TABLE}.CALC_URA_BASE ;;
  }

  dimension: claim_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CLAIM_WID ;;
  }

  dimension: close_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CLOSE_DATE_WID ;;
  }

  dimension_group: close {
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
    sql: to_date(${close_date_wid},'yyyymmdd') ;;
  }

  dimension: cot_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.COT_WID ;;
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

  dimension: dism_paid_units {
    type: number
    sql: ${TABLE}.DISM_PAID_UNITS ;;
  }

  dimension: dism_units {
    type: number
    sql: ${TABLE}.DISM_UNITS ;;
  }

  dimension: dism_unpaid_units {
    type: number
    sql: ${TABLE}.DISM_UNPAID_UNITS ;;
  }

  dimension: disp_paid_units {
    type: number
    sql: ${TABLE}.DISP_PAID_UNITS ;;
  }

  dimension: disp_units {
    type: number
    sql: ${TABLE}.DISP_UNITS ;;
  }

  dimension: disp_unpaid_units {
    type: number
    sql: ${TABLE}.DISP_UNPAID_UNITS ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: external_line_type {
    type: string
    sql: ${TABLE}.EXTERNAL_LINE_TYPE ;;
  }

  dimension: interest_amt {
    type: number
    sql: ${TABLE}.INTEREST_AMT ;;
  }

  dimension: interest_amt_base {
    type: number
    sql: ${TABLE}.INTEREST_AMT_BASE ;;
  }

  dimension: inv_date_wid {
    type: number
    hidden: yes
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
    sql: to_date(${inv_date_wid},'yyyymmdd') ;;
  }

  dimension: inv_req_rebate_amt {
    type: number
    sql: ${TABLE}.INV_REQ_REBATE_AMT ;;
  }

  dimension: inv_req_rebate_amt_base {
    type: number
    sql: ${TABLE}.INV_REQ_REBATE_AMT_BASE ;;
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

  dimension: list_price {
    type: number
    sql: ${TABLE}.LIST_PRICE ;;
  }

  dimension: list_price_base {
    type: number
    sql: ${TABLE}.LIST_PRICE_BASE ;;
  }

  dimension: load_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.LOAD_DATE_WID ;;
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
    sql: to_date(${load_date_wid},'yyyymmdd') ;;
  }

  dimension: org_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: paid_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PAID_DATE_WID ;;
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

  dimension: product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: program_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: rebate_amt {
    type: number
    sql: ${TABLE}.REBATE_AMT ;;
  }

  dimension: rebate_amt_base {
    type: number
    sql: ${TABLE}.REBATE_AMT_BASE ;;
  }

  dimension: ref_line_id {
    type: number
    hidden: yes
    sql: ${TABLE}.REF_LINE_ID ;;
  }

  dimension: resv_paid_units {
    type: number
    sql: ${TABLE}.RESV_PAID_UNITS ;;
  }

  dimension: resv_units {
    type: number
    sql: ${TABLE}.RESV_UNITS ;;
  }

  dimension: resv_unpaid_units {
    type: number
    sql: ${TABLE}.RESV_UNPAID_UNITS ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: sale_curr {
    type: string
    sql: ${TABLE}.SALE_CURR ;;
  }

  dimension: scripts_num {
    type: number
    sql: ${TABLE}.SCRIPTS_NUM ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }


  measure: count {
    type: count
  }
}
