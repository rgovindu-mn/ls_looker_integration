view: mn_combined_product_group_dim {
  derived_table: {
    sql: SELECT
      PG_WID,
      SRC_SYS_PG_ID,
      PG_NAME,
      ALLOW_TIER_CHANGING_FLAG,
      ADJ_TYPE,
      SEPERATE_PROD_FOR_TIERS,
      DISCOUNT_TYPE,
      LATEST_FLAG AS LATEST_FLAG,
      CATEGORY_PRICING,
      RESOLVE_TO_THIS_PG_FLAG,
      COMPLIANCE_TIER_TRACKING,
      BASE_PRICE_LIST_WID AS BASE_PRICE_LIST_WID,
      PRICE_BASIS,
      PRC_OVERR_TOLERANCE,
      PRODUCT_TYPE_PRICED,
      HAS_ACCESS_PRICE,
      INDEXATION_INCREASE,
      NUM_DEFINED_INCREASES,
      INDEXATION_START_DATE,
      INDEXATION_INCR_CAP,
      PROCESSING_DATE_LAG,
      TIER_TIME_FRAME,
      COMPLIANCE_THRESHOLD,
      SCHEDULE_BASIS,
      SALE_LINE_FROM,
      SALE_LINE_TYPE,
      NUM_TIERS,
      STRATEGY_BASED_FLAG,
      SRC_STRATEGY_NAME,
      SRC_STRATEGY_TYPE,
      'GMT' || TZ_OFFSET(EFFECTIVE_TIMEZONE) AS EFFECTIVE_TIMEZONE_GMT,
      DOC_TZ_EFF_END_DATE,
      DOC_TZ_EFF_START_DATE,
      SRC_SYS_PK_ID AS SRC_SYS_PK_ID,
      SRC_SYS_MGR_ID SRC_SYS_MGR_ID,
      CALC_OFFSET,
      QUAL_METHOD_NAME,
      'Static' AS MARKET_BASKET_TYPE,
      NULL AS ADJUST_OPERATOR,
      BUS_SEG_WID,
      PRICING_METHOD_WID
      FROM
      MN_PRODUCT_GROUP_DIM_VW
      WHERE STRATEGY_BASED_FLAG='N'

      UNION

      SELECT
      PG.PG_WID,
      PGSD.SRC_SYS_PG_ID,
      PGSD.PG_NAME,
      PGSD.ALLOW_TIER_CHANGING_FLAG,
      PGSD.ADJ_TYPE,
      NULL AS SEPERATE_PROD_FOR_TIERS,
      NULL AS DISCOUNT_TYPE,
      PG.LATEST_FLAG AS LATEST_FLAG,
      PGSD.CATEGORY_PRICING,
      NULL AS RESOLVE_TO_THIS_PG_FLAG,
      PGSD.COMPLIANCE_TIER_TRACKING,
      PGSD.PRICE_LIST_WID AS BASE_PRICE_LIST_WID,
      PGSD.PRICE_BASIS,
      NULL AS PRC_OVERR_TOLERANCE,
      NULL AS PRODUCT_TYPE_PRICED,
      PGSD.HAS_ACCESS_PRICE,
      NULL AS INDEXATION_INCREASE,
      NULL AS NUM_DEFINED_INCREASES,
      NULL AS INDEXATION_START_DATE,
      NULL AS INDEXATION_INCR_CAP,
      PGSD.PROCESSING_DATE_LAG,
      PGSD.TIME_FRAME AS TIER_TIME_FRAME,
      NULL AS COMPLIANCE_THRESHOLD,
      PGSD.SCHEDULE_BASIS,
      PGSD.SALE_LINE_FROM,
      PGSD.SALE_LINE_TYPE,
      PGSD.NUM_TIERS,
      PG.STRATEGY_BASED_FLAG,
      PG.SRC_STRATEGY_NAME,
      PG.SRC_STRATEGY_TYPE,
      'GMT' || TZ_OFFSET(PG.EFFECTIVE_TIMEZONE) AS EFFECTIVE_TIMEZONE_GMT,
      PG.DOC_TZ_EFF_END_DATE,
      PG.DOC_TZ_EFF_START_DATE,
      PGSD.SRC_SYS_CONTRACT_ID AS SRC_SYS_PK_ID,
      PGSD.SRC_SYS_MGR_ID SRC_SYS_MGR_ID,
      PGSD.CALC_OFFSET,
      PGSD.QUAL_METHOD_NAME,
      PGSD.MARKET_BASKET_TYPE,
      PGSD.ADJUST_OPERATOR,
      PGSD.BUS_SEG_WID,
      PG.PRICING_METHOD_WID
      FROM
      MN_PRODUCT_GROUP_SD_RPT_VW PGSD
        JOIN MN_PRODUCT_GROUP_DIM_VW PG ON PG.PG_WID = PGSD.PG_WID
      WHERE PG.STRATEGY_BASED_FLAG='Y'
       ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [detail*]
  }

  dimension: pricing_method_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PRICING_METHOD_WID ;;
  }

  dimension: bus_seg_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.BUS_SEG_WID ;;
  }

  dimension: pg_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: src_sys_pg_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_PG_ID ;;
  }

  dimension: pg_name {
    type: string
    label: "Price Program Name"
    sql: ${TABLE}.PG_NAME ;;
  }

  dimension: allow_tier_changing_flag {
    type: string
    sql: ${TABLE}.ALLOW_TIER_CHANGING_FLAG ;;
  }

  dimension: adj_type {
    type: string
    sql: ${TABLE}.ADJ_TYPE ;;
  }

  dimension: seperate_prod_for_tiers {
    type: string
    sql: ${TABLE}.SEPERATE_PROD_FOR_TIERS ;;
  }

  dimension: discount_type {
    type: string
    sql: ${TABLE}.DISCOUNT_TYPE ;;
  }

  dimension: latest_flag {
    type: string
    sql: ${TABLE}.LATEST_FLAG ;;
  }

  dimension: category_pricing {
    type: string
    sql: ${TABLE}.CATEGORY_PRICING ;;
  }

  dimension: resolve_to_this_pg_flag {
    type: string
    sql: ${TABLE}.RESOLVE_TO_THIS_PG_FLAG ;;
  }

  dimension: compliance_tier_tracking {
    type: string
    sql: ${TABLE}.COMPLIANCE_TIER_TRACKING ;;
  }

  dimension: base_price_list_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.BASE_PRICE_LIST_WID ;;
  }

  dimension: price_basis {
    type: string
    sql: ${TABLE}.PRICE_BASIS ;;
  }

  dimension: prc_overr_tolerance {
    type: string
    sql: ${TABLE}.PRC_OVERR_TOLERANCE ;;
  }

  dimension: product_type_priced {
    type: string
    sql: ${TABLE}.PRODUCT_TYPE_PRICED ;;
  }

  dimension: has_access_price {
    type: string
    sql: ${TABLE}.HAS_ACCESS_PRICE ;;
  }

  dimension: indexation_increase {
    type: string
    sql: ${TABLE}.INDEXATION_INCREASE ;;
  }

  dimension: num_defined_increases {
    type: string
    sql: ${TABLE}.NUM_DEFINED_INCREASES ;;
  }

  dimension_group: indexation_start_date {
    type: time
    sql: ${TABLE}.INDEXATION_START_DATE ;;
  }

  dimension: indexation_incr_cap {
    type: string
    sql: ${TABLE}.INDEXATION_INCR_CAP ;;
  }

  dimension: processing_date_lag {
    type: string
    sql: ${TABLE}.PROCESSING_DATE_LAG ;;
  }

  dimension: tier_time_frame {
    type: string
    sql: ${TABLE}.TIER_TIME_FRAME ;;
  }

  dimension: compliance_threshold {
    type: string
    sql: ${TABLE}.COMPLIANCE_THRESHOLD ;;
  }

  dimension: schedule_basis {
    type: string
    sql: ${TABLE}.SCHEDULE_BASIS ;;
  }

  dimension: sale_line_from {
    type: string
    sql: ${TABLE}.SALE_LINE_FROM ;;
  }

  dimension: sale_line_type {
    type: string
    sql: ${TABLE}.SALE_LINE_TYPE ;;
  }

  dimension: num_tiers {
    type: string
    sql: ${TABLE}.NUM_TIERS ;;
  }

  dimension: strategy_based_flag {
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: src_strategy_name {
    type: string
    sql: ${TABLE}.SRC_STRATEGY_NAME ;;
  }

  dimension: src_strategy_type {
    type: string
    sql: ${TABLE}.SRC_STRATEGY_TYPE ;;
  }

  dimension: effective_timezone_gmt {
    type: string
    sql: ${TABLE}.EFFECTIVE_TIMEZONE_GMT ;;
  }

  dimension: doc_tz_eff_end_date {
    type: date
    sql: ${TABLE}.DOC_TZ_EFF_END_DATE ;;
  }

  dimension: doc_tz_eff_start_date {
    type: date
    sql: ${TABLE}.DOC_TZ_EFF_START_DATE ;;
  }

  dimension: src_sys_pk_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_PK_ID ;;
  }

  dimension: src_sys_mgr_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: calc_offset {
    type: string
    sql: ${TABLE}.CALC_OFFSET ;;
  }

  dimension: qual_method_name {
    type: string
    sql: ${TABLE}.QUAL_METHOD_NAME ;;
  }

  dimension: market_basket_type {
    type: string
    sql: ${TABLE}.MARKET_BASKET_TYPE ;;
  }

  dimension: adjust_operator {
    type: string
    sql: ${TABLE}.ADJUST_OPERATOR ;;
  }

  set: detail {
    fields: [
      pg_name,
      allow_tier_changing_flag,
      adj_type,
      seperate_prod_for_tiers,
      discount_type,
      latest_flag,
      category_pricing,
      resolve_to_this_pg_flag,
      compliance_tier_tracking,
      base_price_list_wid,
      price_basis,
      prc_overr_tolerance,
      product_type_priced,
      has_access_price,
      indexation_increase,
      num_defined_increases,
      indexation_start_date_time,
      indexation_incr_cap,
      processing_date_lag,
      tier_time_frame,
      compliance_threshold,
      schedule_basis,
      sale_line_from,
      sale_line_type,
      num_tiers,
      strategy_based_flag,
      src_strategy_name,
      src_strategy_type,
      effective_timezone_gmt,
      doc_tz_eff_end_date,
      doc_tz_eff_start_date,
      calc_offset,
      qual_method_name,
      market_basket_type,
      adjust_operator
    ]
  }
}
