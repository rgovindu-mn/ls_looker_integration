view: mn_product_group_dim {
  sql_table_name: MN_PRODUCT_GROUP_DIM ;;

  dimension: adj_type {
    type: string
    sql: ${TABLE}.ADJ_TYPE ;;
  }

  dimension: allow_tier_changing_flag {
    type: string
    sql: ${TABLE}.ALLOW_TIER_CHANGING_FLAG ;;
  }

  dimension: base_price_list_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.BASE_PRICE_LIST_WID ;;
  }

  dimension: bus_seg_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.BUS_SEG_WID ;;
  }

  dimension: calc_obj_type {
    type: string
    sql: ${TABLE}.CALC_OBJ_TYPE ;;
  }

  dimension: calc_offset {
    type: string
    sql: ${TABLE}.CALC_OFFSET ;;
  }

  dimension: category_pricing {
    type: string
    sql: ${TABLE}.CATEGORY_PRICING ;;
  }

  dimension: compliance_threshold {
    type: string
    sql: ${TABLE}.COMPLIANCE_THRESHOLD ;;
  }

  dimension: compliance_tier_tracking {
    type: string
    sql: ${TABLE}.COMPLIANCE_TIER_TRACKING ;;
  }

  dimension: ctrt_order_idx {
    type: string
    sql: ${TABLE}.CTRT_ORDER_IDX ;;
  }

  dimension_group: date_created {
    hidden:  yes
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
    hidden:  yes
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

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: discount_type {
    type: string
    sql: ${TABLE}.DISCOUNT_TYPE ;;
  }

  dimension: effective_timezone {
    type: string
    sql: ${TABLE}.EFFECTIVE_TIMEZONE ;;
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

  dimension: end_ver_num {
    type: string
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: has_access_price {
    type: string
    sql: ${TABLE}.HAS_ACCESS_PRICE ;;
  }

  dimension: index_type {
    type: string
    sql: ${TABLE}.INDEX_TYPE ;;
  }

  dimension: indexation_incr_cap {
    type: string
    sql: ${TABLE}.INDEXATION_INCR_CAP ;;
  }

  dimension: indexation_increase {
    type: string
    sql: ${TABLE}.INDEXATION_INCREASE ;;
  }

  dimension_group: indexation_start {
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
    sql: ${TABLE}.INDEXATION_START_DATE ;;
  }

  dimension: is_flat {
    type: string
    sql: ${TABLE}.IS_FLAT ;;
  }

  dimension: latest_flag {
    type: string
    sql: ${TABLE}.LATEST_FLAG ;;
  }

  dimension: module_type {
    type: string
    sql: ${TABLE}.MODULE_TYPE ;;
  }

  dimension: num_defined_increases {
    type: string
    sql: ${TABLE}.NUM_DEFINED_INCREASES ;;
  }

  dimension: num_tiers {
    type: string
    sql: ${TABLE}.NUM_TIERS ;;
  }

  dimension: org_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: pg_name {
    type: string
    sql: ${TABLE}.PG_NAME ;;
  }

  dimension: pg_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: prc_overr_tolerance {
    type: string
    sql: ${TABLE}.PRC_OVERR_TOLERANCE ;;
  }

  dimension: price_basis {
    type: string
    sql: ${TABLE}.PRICE_BASIS ;;
  }

  dimension: price_protection {
    type: string
    sql: ${TABLE}.PRICE_PROTECTION ;;
  }

  dimension: pricing_method_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.PRICING_METHOD_WID ;;
  }

  dimension: processing_date_lag {
    type: string
    sql: ${TABLE}.PROCESSING_DATE_LAG ;;
  }

  dimension: product_type_priced {
    type: string
    sql: ${TABLE}.PRODUCT_TYPE_PRICED ;;
  }

  dimension: qual_method {
    type: string
    sql: ${TABLE}.QUAL_METHOD ;;
  }

  dimension: qual_method_name {
    type: string
    sql: ${TABLE}.QUAL_METHOD_NAME ;;
  }

  dimension: resolve_to_this_pg_flag {
    type: string
    sql: ${TABLE}.RESOLVE_TO_THIS_PG_FLAG ;;
  }

  dimension: run_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: sale_line_from {
    type: string
    sql: ${TABLE}.SALE_LINE_FROM ;;
  }

  dimension: sale_line_type {
    type: string
    sql: ${TABLE}.SALE_LINE_TYPE ;;
  }

  dimension: schedule_basis {
    type: string
    sql: ${TABLE}.SCHEDULE_BASIS ;;
  }

  dimension: seperate_prod_for_tiers {
    type: string
    sql: ${TABLE}.SEPERATE_PROD_FOR_TIERS ;;
  }

  dimension: source_system_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_strategy_name {
    type: string
    sql: ${TABLE}.SRC_STRATEGY_NAME ;;
  }

  dimension: src_strategy_num {
    type: string
    sql: ${TABLE}.SRC_STRATEGY_NUM ;;
  }

  dimension: src_strategy_type {
    type: string
    sql: ${TABLE}.SRC_STRATEGY_TYPE ;;
  }

  dimension: src_strategy_ver_num {
    type: string
    sql: ${TABLE}.SRC_STRATEGY_VER_NUM ;;
  }

  dimension: src_sys_contract_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SRC_SYS_CONTRACT_ID ;;
  }

  dimension: src_sys_mgr_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_pg_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SRC_SYS_PG_ID ;;
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

  dimension: strategy_based_flag {
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: tier_time_frame {
    type: string
    sql: ${TABLE}.TIER_TIME_FRAME ;;
  }

  dimension_group: ver_end {
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
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: ver_num {
    type: string
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension_group: ver_start {
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
    sql: ${TABLE}.VER_START_DATE ;;
  }

  measure:  expired_contracts {
    type:  count_distinct
    sql: ${TABLE}.src_sys_contract_id ;;
  }
  measure: count {
    type: count
    drill_fields: [qual_method_name, src_strategy_name, pg_name]
  }
}
