view: mn_pg_tier_basis_dim {
  sql_table_name: MN_PG_TIER_BASIS_DIM_VW ;;

  dimension: basis_desc {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.BASIS_DESC ;;
  }

  dimension: basis_type {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.BASIS_TYPE ;;
  }

  dimension: basis_unit {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.BASIS_UNIT ;;
  }

  dimension: component_name {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.COMPONENT_NAME ;;
  }

  dimension: component_type {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.COMPONENT_TYPE ;;
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

  dimension_group: effective_end {
    group_label: "Tier Basis"
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

  dimension_group: effective_start {
    group_label: "Tier Basis"
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
    type: number
    hidden: yes
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: is_mb_component {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.IS_MB_COMPONENT ;;
  }

  dimension: is_qual_comp_flag {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.IS_QUAL_COMP_FLAG ;;
  }

  dimension: name {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.NAME ;;
  }

  dimension: num_tiers {
    type: number
    group_label: "Tier Basis"
    sql: ${TABLE}.NUM_TIERS ;;
  }

  dimension: order_index {
    type: number
    group_label: "Tier Basis"
    sql: ${TABLE}.ORDER_INDEX ;;
  }

  dimension: pg_tier_basis_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PG_TIER_BASIS_WID ;;
  }

  dimension: pg_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: separate_tb_prod_flag {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.SEPARATE_TB_PROD_FLAG ;;
  }

  dimension: source_system_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_component_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_COMPONENT_ID ;;
  }

  dimension: src_sys_tb_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_TB_ID ;;
  }

  dimension: strategy_based_flag {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: tier1_value {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.TIER1_VALUE ;;
  }

  dimension: tier2_value {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.TIER2_VALUE ;;
  }

  dimension: tier3_value {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.TIER3_VALUE ;;
  }

  dimension: tier4_value {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.TIER4_VALUE ;;
  }

  dimension: tier5_value {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.TIER5_VALUE ;;
  }

  dimension: tier6_value {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.TIER6_VALUE ;;
  }

  dimension: tier7_value {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.TIER7_VALUE ;;
  }

  dimension: tier8_value {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.TIER8_VALUE ;;
  }

  dimension: tier9_value {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.TIER9_VALUE ;;
  }

  dimension: units {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.UNITS ;;
  }

  dimension: uom {
    type: string
    group_label: "Tier Basis"
    sql: ${TABLE}.UOM ;;
  }

  dimension_group: ver_end {
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
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: ver_num {
    hidden: yes
    type: number
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension_group: ver_start {
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
    sql: ${TABLE}.VER_START_DATE ;;
  }

  dimension: report_definition_num_1 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_1 ;;
  }

  dimension: report_definition_num_10 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_10 ;;
  }

  dimension: report_definition_num_11 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_11 ;;
  }

  dimension: report_definition_num_12 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_12 ;;
  }

  dimension: report_definition_num_13 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_13 ;;
  }

  dimension: report_definition_num_14 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_14 ;;
  }

  dimension: report_definition_num_15 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_15 ;;
  }

  dimension: report_definition_num_16 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_16 ;;
  }

  dimension: report_definition_num_17 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_17 ;;
  }

  dimension: report_definition_num_18 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_18 ;;
  }

  dimension: report_definition_num_19 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_19 ;;
  }

  dimension: report_definition_num_2 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_2 ;;
  }

  dimension: report_definition_num_20 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_20 ;;
  }

  dimension: report_definition_num_21 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_21 ;;
  }

  dimension: report_definition_num_22 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_22 ;;
  }

  dimension: report_definition_num_23 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_23 ;;
  }

  dimension: report_definition_num_24 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_24 ;;
  }

  dimension: report_definition_num_25 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_25 ;;
  }

  dimension: report_definition_num_26 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_26 ;;
  }

  dimension: report_definition_num_27 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_27 ;;
  }

  dimension: report_definition_num_28 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_28 ;;
  }

  dimension: report_definition_num_29 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_29 ;;
  }

  dimension: report_definition_num_3 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_3 ;;
  }

  dimension: report_definition_num_30 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_30 ;;
  }

  dimension: report_definition_num_31 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_31 ;;
  }

  dimension: report_definition_num_32 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_32 ;;
  }

  dimension: report_definition_num_33 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_33 ;;
  }

  dimension: report_definition_num_34 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_34 ;;
  }

  dimension: report_definition_num_35 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_35 ;;
  }

  dimension: report_definition_num_36 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_36 ;;
  }

  dimension: report_definition_num_37 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_37 ;;
  }

  dimension: report_definition_num_38 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_38 ;;
  }

  dimension: report_definition_num_39 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_39 ;;
  }

  dimension: report_definition_num_4 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_4 ;;
  }

  dimension: report_definition_num_40 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_40 ;;
  }

  dimension: report_definition_num_41 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_41 ;;
  }

  dimension: report_definition_num_42 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_42 ;;
  }

  dimension: report_definition_num_43 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_43 ;;
  }

  dimension: report_definition_num_44 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_44 ;;
  }

  dimension: report_definition_num_45 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_45 ;;
  }

  dimension: report_definition_num_46 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_46 ;;
  }

  dimension: report_definition_num_47 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_47 ;;
  }

  dimension: report_definition_num_48 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_48 ;;
  }

  dimension: report_definition_num_49 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_49 ;;
  }

  dimension: report_definition_num_5 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_5 ;;
  }

  dimension: report_definition_num_50 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_50 ;;
  }

  dimension: report_definition_num_6 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_6 ;;
  }

  dimension: report_definition_num_7 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_7 ;;
  }

  dimension: report_definition_num_8 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_8 ;;
  }

  dimension: report_definition_num_9 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_NUM_9 ;;
  }

  dimension: report_definition_string_1 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_1 ;;
  }

  dimension: report_definition_string_10 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_10 ;;
  }

  dimension: report_definition_string_11 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_11 ;;
  }

  dimension: report_definition_string_12 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_12 ;;
  }

  dimension: report_definition_string_13 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_13 ;;
  }

  dimension: report_definition_string_14 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_14 ;;
  }

  dimension: report_definition_string_15 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_15 ;;
  }

  dimension: report_definition_string_16 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_16 ;;
  }

  dimension: report_definition_string_17 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_17 ;;
  }

  dimension: report_definition_string_18 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_18 ;;
  }

  dimension: report_definition_string_19 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_19 ;;
  }

  dimension: report_definition_string_2 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_2 ;;
  }

  dimension: report_definition_string_20 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_20 ;;
  }

  dimension: report_definition_string_21 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_21 ;;
  }

  dimension: report_definition_string_22 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_22 ;;
  }

  dimension: report_definition_string_23 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_23 ;;
  }

  dimension: report_definition_string_24 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_24 ;;
  }

  dimension: report_definition_string_25 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_25 ;;
  }

  dimension: report_definition_string_26 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_26 ;;
  }

  dimension: report_definition_string_27 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_27 ;;
  }

  dimension: report_definition_string_28 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_28 ;;
  }

  dimension: report_definition_string_29 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_29 ;;
  }

  dimension: report_definition_string_3 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_3 ;;
  }

  dimension: report_definition_string_30 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_30 ;;
  }

  dimension: report_definition_string_31 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_31 ;;
  }

  dimension: report_definition_string_32 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_32 ;;
  }

  dimension: report_definition_string_33 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_33 ;;
  }

  dimension: report_definition_string_34 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_34 ;;
  }

  dimension: report_definition_string_35 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_35 ;;
  }

  dimension: report_definition_string_36 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_36 ;;
  }

  dimension: report_definition_string_37 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_37 ;;
  }

  dimension: report_definition_string_38 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_38 ;;
  }

  dimension: report_definition_string_39 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_39 ;;
  }

  dimension: report_definition_string_4 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_4 ;;
  }

  dimension: report_definition_string_40 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_40 ;;
  }

  dimension: report_definition_string_41 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_41 ;;
  }

  dimension: report_definition_string_42 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_42 ;;
  }

  dimension: report_definition_string_43 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_43 ;;
  }

  dimension: report_definition_string_44 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_44 ;;
  }

  dimension: report_definition_string_45 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_45 ;;
  }

  dimension: report_definition_string_46 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_46 ;;
  }

  dimension: report_definition_string_47 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_47 ;;
  }

  dimension: report_definition_string_48 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_48 ;;
  }

  dimension: report_definition_string_49 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_49 ;;
  }

  dimension: report_definition_string_5 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_5 ;;
  }

  dimension: report_definition_string_50 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_50 ;;
  }

  dimension: report_definition_string_6 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_6 ;;
  }

  dimension: report_definition_string_7 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_7 ;;
  }

  dimension: report_definition_string_8 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_8 ;;
  }

  dimension: report_definition_string_9 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_DEFINITION_STRING_9 ;;
  }

  measure: count {
    type: count
    drill_fields: [name, component_name]
  }
}
