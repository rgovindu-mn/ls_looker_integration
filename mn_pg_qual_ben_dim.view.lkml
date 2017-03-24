view: mn_pg_qual_ben_dim {
  sql_table_name: LSETLDM.MN_PG_QUAL_BEN_DIM ;;

  dimension: basis_desc {
    type: string
    sql: ${TABLE}.BASIS_DESC ;;
  }

  dimension: basis_type {
    type: string
    sql: ${TABLE}.BASIS_TYPE ;;
  }

  dimension: basis_unit {
    type: string
    sql: ${TABLE}.BASIS_UNIT ;;
  }

  dimension: calc_level {
    type: string
    sql: ${TABLE}.CALC_LEVEL ;;
  }

  dimension: calc_obj_type {
    type: string
    sql: ${TABLE}.CALC_OBJ_TYPE ;;
  }

  dimension: component_name {
    type: string
    sql: ${TABLE}.COMPONENT_NAME ;;
  }

  dimension: component_type {
    type: string
    sql: ${TABLE}.COMPONENT_TYPE ;;
  }

  dimension_group: date_created {
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

  dimension_group: eff_end {
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
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension_group: eff_start {
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
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension: end_ver_num {
    type: string
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: is_mb_component {
    type: string
    sql: ${TABLE}.IS_MB_COMPONENT ;;
  }

  dimension: is_qual_comp_flag {
    type: string
    sql: ${TABLE}.IS_QUAL_COMP_FLAG ;;
  }

  dimension: module_type {
    type: string
    sql: ${TABLE}.MODULE_TYPE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: num_tiers {
    type: string
    sql: ${TABLE}.NUM_TIERS ;;
  }

  dimension: order_index {
    type: string
    sql: ${TABLE}.ORDER_INDEX ;;
  }

  dimension: pg_tb_wid {
    type: string
    sql: ${TABLE}.PG_TB_WID ;;
  }

  dimension: pg_wid {
    type: string
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: sale_line_type {
    type: string
    sql: ${TABLE}.SALE_LINE_TYPE ;;
  }

  dimension: separate_tb_prod_flag {
    type: string
    sql: ${TABLE}.SEPARATE_TB_PROD_FLAG ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_component_id {
    type: string
    sql: ${TABLE}.SRC_SYS_COMPONENT_ID ;;
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

  dimension: src_sys_tb_id {
    type: string
    sql: ${TABLE}.SRC_SYS_TB_ID ;;
  }

  dimension: strategy_based_flag {
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: tier1_value {
    type: string
    sql: ${TABLE}.TIER1_VALUE ;;
  }

  dimension: tier2_value {
    type: string
    sql: ${TABLE}.TIER2_VALUE ;;
  }

  dimension: tier3_value {
    type: string
    sql: ${TABLE}.TIER3_VALUE ;;
  }

  dimension: tier4_value {
    type: string
    sql: ${TABLE}.TIER4_VALUE ;;
  }

  dimension: tier5_value {
    type: string
    sql: ${TABLE}.TIER5_VALUE ;;
  }

  dimension: tier6_value {
    type: string
    sql: ${TABLE}.TIER6_VALUE ;;
  }

  dimension: tier7_value {
    type: string
    sql: ${TABLE}.TIER7_VALUE ;;
  }

  dimension: tier8_value {
    type: string
    sql: ${TABLE}.TIER8_VALUE ;;
  }

  dimension: tier9_value {
    type: string
    sql: ${TABLE}.TIER9_VALUE ;;
  }

  dimension: use_strat_filter_flag {
    type: string
    sql: ${TABLE}.USE_STRAT_FILTER_FLAG ;;
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

  measure: count {
    type: count
    drill_fields: [name, component_name]
  }
}
