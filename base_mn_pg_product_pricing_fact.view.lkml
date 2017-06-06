view: mn_pg_product_pricing_fact {
  sql_table_name: MN_PG_PRODUCT_PRICING_FACT_VW ;;


  dimension: access_user_wid {
    type: string
    sql: ${mn_user_access_pg_map.user_wid};;
  }


  dimension: access_user_name {
    type: string
    sql: ${mn_user_access_pg_map.user_name};;
  }


    dimension: adj_high {
    type: string
    sql: ${TABLE}.ADJ_HIGH ;;
  }

  dimension: adj_low {
    type: string
    sql: ${TABLE}.ADJ_LOW ;;
  }

  dimension: adj_operator {
    type: string
    sql: ${TABLE}.ADJ_OPERATOR ;;
  }

  dimension: adjust_by {
    type: string
    sql: ${TABLE}.ADJUST_BY ;;
  }

  dimension: awarded_status {
    type: string
    sql: ${TABLE}.AWARDED_STATUS ;;
  }

  dimension: base_price {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.BASE_PRICE ;;
  }

  dimension: base_price_curr {
    type: string
    sql: ${TABLE}.BASE_PRICE_CURR ;;
  }

  dimension: category_product_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.CATEGORY_PRODUCT_WID ;;
  }

  dimension_group: date_created {
    type: time
    hidden:  yes
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
    hidden:  yes
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

  dimension: distribution_method {
    type: string
    sql: ${TABLE}.DISTRIBUTION_METHOD ;;
  }

  dimension: eff_adj {
    type: string
    sql: ${TABLE}.EFF_ADJ ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: min_order_amt {
    type: string
    sql: ${TABLE}.MIN_ORDER_AMT ;;
  }

  dimension: min_order_amt_curr {
    type: string
    sql: ${TABLE}.MIN_ORDER_AMT_CURR ;;
  }

  dimension: min_order_block {
    type: string
    sql: ${TABLE}.MIN_ORDER_BLOCK ;;
  }

  dimension: min_order_penalty {
    type: string
    sql: ${TABLE}.MIN_ORDER_PENALTY ;;
  }

  dimension: min_order_penalty_curr {
    type: string
    sql: ${TABLE}.MIN_ORDER_PENALTY_CURR ;;
  }

  dimension: min_order_qty {
    type: string
    sql: ${TABLE}.MIN_ORDER_QTY ;;
  }

  dimension: payment_code {
    type: string
    sql: ${TABLE}.PAYMENT_CODE ;;
  }

  dimension: payment_term {
    type: string
    sql: ${TABLE}.PAYMENT_TERM ;;
  }

  dimension: pg_end_ver_num {
    type: string
    sql: ${TABLE}.PG_END_VER_NUM ;;
  }

  dimension: pg_prod_pricing_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.PG_PROD_PRICING_WID ;;
  }

  dimension: pg_ver_num {
    type: string
    sql: ${TABLE}.PG_VER_NUM ;;
  }

  dimension: pg_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: prc_high {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.PRC_HIGH ;;
  }

  dimension: price_basis {
    type: string
    sql: ${TABLE}.PRICE_BASIS ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.PRODUCT_TYPE ;;
  }

  dimension: product_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: run_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_lag_li_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SRC_SYS_LAG_LI_ID ;;
  }

  dimension: src_sys_li_prcs_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SRC_SYS_LI_PRCS_ID ;;
  }

  dimension: src_sys_pmli_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SRC_SYS_PMLI_ID ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: tier_idx {
    type: string
    sql: ${TABLE}.TIER_IDX ;;
  }

  dimension: tiered_flag {
    type: string
    sql: ${TABLE}.TIERED_FLAG ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.TIMEZONE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure:  product_price {
    type:  average
    sql: ${prc_high} ;;
  }

measure:  count_contracts {
    type:  count_distinct
    sql: ${mn_contract_header_dim.src_sys_contract_id} ;;
  }
}
