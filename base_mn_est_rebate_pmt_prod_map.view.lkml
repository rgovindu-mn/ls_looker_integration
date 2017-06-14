view: mn_est_rebate_pmt_prod_map {
  sql_table_name: MN_EST_REBATE_PMT_PROD_MAP_VW ;;

  dimension: aggr_rebate_type {
    type: string
    sql: ${TABLE}.AGGR_REBATE_TYPE ;;
  }

  dimension: aggr_rebate_type_name {
    type: string
    sql: ${TABLE}.AGGR_REBATE_TYPE_NAME ;;
  }

  dimension: cms_qty {
    type: string
    sql: ${TABLE}.CMS_QTY ;;
  }

  dimension: contract_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_WID ;;
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

  dimension: est_uom {
    type: string
    sql: ${TABLE}.EST_UOM ;;
  }

  dimension: estimate_payment_amt_curr {
    type: string
    sql: ${TABLE}.ESTIMATE_PAYMENT_AMT_CURR ;;
  }

  dimension: estimate_pmt {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT ;;
  }

  dimension: estimate_pmt_base {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_BASE ;;
  }

  dimension: estimate_pmt_li_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_LI_WID ;;
  }

  dimension: estimate_pmt_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_WID ;;
  }

  dimension: estimate_qty {
    type: string
    sql: ${TABLE}.ESTIMATE_QTY ;;
  }

  dimension: ext_cms_qty {
    type: string
    sql: ${TABLE}.EXT_CMS_QTY ;;
  }

  dimension: ext_contract_id {
    type: string
    sql: ${TABLE}.EXT_CONTRACT_ID ;;
  }

  dimension: ext_estimate_qty {
    type: string
    sql: ${TABLE}.EXT_ESTIMATE_QTY ;;
  }

  dimension: ext_item {
    type: string
    sql: ${TABLE}.EXT_ITEM ;;
  }

  dimension: ext_ndc_units {
    type: string
    sql: ${TABLE}.EXT_NDC_UNITS ;;
  }

  dimension: ext_pmt_type {
    type: string
    sql: ${TABLE}.EXT_PMT_TYPE ;;
  }

  dimension: ext_uom {
    type: string
    sql: ${TABLE}.EXT_UOM ;;
  }

  dimension: gross_rev {
    type: string
    sql: ${TABLE}.GROSS_REV ;;
  }

  dimension: gross_rev_base {
    type: string
    sql: ${TABLE}.GROSS_REV_BASE ;;
  }

  dimension: gross_rev_curr {
    type: string
    sql: ${TABLE}.GROSS_REV_CURR ;;
  }

  dimension: ndc_units {
    type: string
    sql: ${TABLE}.NDC_UNITS ;;
  }

  dimension_group: paid {
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
    sql: ${TABLE}.PAID_DATE ;;
  }

  dimension: payee_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PAYEE_WID ;;
  }

  dimension_group: period_end {
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
    sql: ${TABLE}.PERIOD_END_DATE ;;
  }

  dimension: period_end_date_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PERIOD_END_DATE_WID ;;
  }

  dimension: plan_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PLAN_WID ;;
  }

  dimension: product_num {
    type: string
    sql: ${TABLE}.PRODUCT_NUM ;;
  }

  dimension: product_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: program_type {
    type: string
    sql: ${TABLE}.PROGRAM_TYPE ;;
  }

  dimension: program_type_name {
    type: string
    sql: ${TABLE}.PROGRAM_TYPE_NAME ;;
  }

  dimension: program_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: run_id {
    hidden: yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: rx_num {
    type: string
    sql: ${TABLE}.RX_NUM ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_contract_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_CONTRACT_ID ;;
  }

  dimension_group: src_sys_date_created {
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
    sql: ${TABLE}.SRC_SYS_DATE_CREATED ;;
  }

  dimension_group: src_sys_date_updated {
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
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension: src_sys_est_pmt_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_EST_PMT_ID ;;
  }

  dimension: src_sys_estimate_pmt_li_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_ESTIMATE_PMT_LI_ID ;;
  }

  dimension: src_sys_item_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_ITEM_ID ;;
  }

  dimension: src_sys_payee_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_PAYEE_ID ;;
  }

  dimension: src_sys_plan_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_PLAN_ID ;;
  }

  dimension: src_sys_program_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_PROGRAM_ID ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}.UOM ;;
  }

  dimension: util_type {
    type: string
    sql: ${TABLE}.UTIL_TYPE ;;
  }

  dimension: util_type_name {
    type: string
    sql: ${TABLE}.UTIL_TYPE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [program_type_name, aggr_rebate_type_name, util_type_name]
  }

  measure: estimated_payment_base {
    type: sum
    label: "Total Estimated Payment Amount"
    value_format_name: decimal_0
    sql: ${estimate_pmt_base} ;;
  }

}
