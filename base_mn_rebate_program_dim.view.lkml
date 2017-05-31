view: mn_rebate_program_dim {
  sql_table_name: MN_REBATE_PROGRAM_DIM ;;

  dimension: accru_cust_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ACCRU_CUST_WID ;;
  }

  dimension: accrual_rate {
    type: string
    sql: ${TABLE}.ACCRUAL_RATE ;;
  }

  dimension: accrual_type_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ACCRUAL_TYPE_WID ;;
  }

  dimension: benefit_calc_rule {
    type: string
    sql: ${TABLE}.BENEFIT_CALC_RULE ;;
  }

  dimension: calc_level {
    type: string
    sql: ${TABLE}.CALC_LEVEL ;;
  }

  dimension: calc_obj_type {
    type: string
    sql: ${TABLE}.CALC_OBJ_TYPE ;;
  }

  dimension: contract_type_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_TYPE_WID ;;
  }

  dimension: customer_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.CUSTOMER_WID ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
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

  dimension: effective_timezone {
    type: string
    sql: ${TABLE}.EFFECTIVE_TIMEZONE ;;
  }

  dimension: end_ver_num {
    type: string
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: flat_program {
    type: string
    sql: ${TABLE}.FLAT_PROGRAM ;;
  }

  dimension: grp_name {
    type: string
    sql: ${TABLE}.GRP_NAME ;;
  }

  dimension: late_date_lag {
    type: string
    sql: ${TABLE}.LATE_DATE_LAG ;;
  }

  dimension: latest_flag {
    type: string
    sql: ${TABLE}.LATEST_FLAG ;;
  }

  dimension: market_basket_type {
    type: string
    sql: ${TABLE}.MARKET_BASKET_TYPE ;;
  }

  dimension: module_type {
    type: string
    sql: ${TABLE}.MODULE_TYPE ;;
  }

  dimension: non_std_program {
    type: string
    sql: ${TABLE}.NON_STD_PROGRAM ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }

  dimension: num_tiers {
    type: string
    sql: ${TABLE}.NUM_TIERS ;;
  }

  dimension: order_idx {
    type: string
    sql: ${TABLE}.ORDER_IDX ;;
  }

  dimension: org_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: payee_customer_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PAYEE_CUSTOMER_WID ;;
  }

  dimension: payment_cust_type {
    type: string
    sql: ${TABLE}.PAYMENT_CUST_TYPE ;;
  }

  dimension: payment_freq {
    type: string
    sql: ${TABLE}.PAYMENT_FREQ ;;
  }

  dimension: payment_grace_freq {
    type: string
    sql: ${TABLE}.PAYMENT_GRACE_FREQ ;;
  }

  dimension: payment_level {
    type: string
    sql: ${TABLE}.PAYMENT_LEVEL ;;
  }

  dimension: pmt_method_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PMT_METHOD_WID ;;
  }

  dimension: pmt_type_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PMT_TYPE_WID ;;
  }

  dimension: processing_date_lag {
    type: string
    sql: ${TABLE}.PROCESSING_DATE_LAG ;;
  }

  dimension: program_name {
    type: string
    sql: ${TABLE}.PROGRAM_NAME ;;
  }

  dimension: program_sub_type {
    type: string
    sql: ${TABLE}.PROGRAM_SUB_TYPE ;;
  }

  dimension: program_sub_type_name {
    type: string
    sql: ${TABLE}.PROGRAM_SUB_TYPE_NAME ;;
  }

  dimension: program_type_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PROGRAM_TYPE_WID ;;
  }

  dimension: program_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: qual_method {
    type: string
    sql: ${TABLE}.QUAL_METHOD ;;
  }

  dimension: report_definition_num_1 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_1 ;;
  }

  dimension: report_definition_num_10 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_10 ;;
  }

  dimension: report_definition_num_11 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_11 ;;
  }

  dimension: report_definition_num_12 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_12 ;;
  }

  dimension: report_definition_num_13 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_13 ;;
  }

  dimension: report_definition_num_14 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_14 ;;
  }

  dimension: report_definition_num_15 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_15 ;;
  }

  dimension: report_definition_num_16 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_16 ;;
  }

  dimension: report_definition_num_17 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_17 ;;
  }

  dimension: report_definition_num_18 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_18 ;;
  }

  dimension: report_definition_num_19 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_19 ;;
  }

  dimension: report_definition_num_2 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_2 ;;
  }

  dimension: report_definition_num_20 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_20 ;;
  }

  dimension: report_definition_num_21 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_21 ;;
  }

  dimension: report_definition_num_22 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_22 ;;
  }

  dimension: report_definition_num_23 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_23 ;;
  }

  dimension: report_definition_num_24 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_24 ;;
  }

  dimension: report_definition_num_25 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_25 ;;
  }

  dimension: report_definition_num_26 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_26 ;;
  }

  dimension: report_definition_num_27 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_27 ;;
  }

  dimension: report_definition_num_28 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_28 ;;
  }

  dimension: report_definition_num_29 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_29 ;;
  }

  dimension: report_definition_num_3 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_3 ;;
  }

  dimension: report_definition_num_30 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_30 ;;
  }

  dimension: report_definition_num_31 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_31 ;;
  }

  dimension: report_definition_num_32 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_32 ;;
  }

  dimension: report_definition_num_33 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_33 ;;
  }

  dimension: report_definition_num_34 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_34 ;;
  }

  dimension: report_definition_num_35 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_35 ;;
  }

  dimension: report_definition_num_36 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_36 ;;
  }

  dimension: report_definition_num_37 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_37 ;;
  }

  dimension: report_definition_num_38 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_38 ;;
  }

  dimension: report_definition_num_39 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_39 ;;
  }

  dimension: report_definition_num_4 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_4 ;;
  }

  dimension: report_definition_num_40 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_40 ;;
  }

  dimension: report_definition_num_41 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_41 ;;
  }

  dimension: report_definition_num_42 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_42 ;;
  }

  dimension: report_definition_num_43 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_43 ;;
  }

  dimension: report_definition_num_44 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_44 ;;
  }

  dimension: report_definition_num_45 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_45 ;;
  }

  dimension: report_definition_num_46 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_46 ;;
  }

  dimension: report_definition_num_47 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_47 ;;
  }

  dimension: report_definition_num_48 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_48 ;;
  }

  dimension: report_definition_num_49 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_49 ;;
  }

  dimension: report_definition_num_5 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_5 ;;
  }

  dimension: report_definition_num_50 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_50 ;;
  }

  dimension: report_definition_num_6 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_6 ;;
  }

  dimension: report_definition_num_7 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_7 ;;
  }

  dimension: report_definition_num_8 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_8 ;;
  }

  dimension: report_definition_num_9 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_9 ;;
  }

  dimension: report_definition_string_1 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_1 ;;
  }

  dimension: report_definition_string_10 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_10 ;;
  }

  dimension: report_definition_string_11 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_11 ;;
  }

  dimension: report_definition_string_12 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_12 ;;
  }

  dimension: report_definition_string_13 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_13 ;;
  }

  dimension: report_definition_string_14 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_14 ;;
  }

  dimension: report_definition_string_15 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_15 ;;
  }

  dimension: report_definition_string_16 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_16 ;;
  }

  dimension: report_definition_string_17 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_17 ;;
  }

  dimension: report_definition_string_18 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_18 ;;
  }

  dimension: report_definition_string_19 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_19 ;;
  }

  dimension: report_definition_string_2 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_2 ;;
  }

  dimension: report_definition_string_20 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_20 ;;
  }

  dimension: report_definition_string_21 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_21 ;;
  }

  dimension: report_definition_string_22 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_22 ;;
  }

  dimension: report_definition_string_23 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_23 ;;
  }

  dimension: report_definition_string_24 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_24 ;;
  }

  dimension: report_definition_string_25 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_25 ;;
  }

  dimension: report_definition_string_26 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_26 ;;
  }

  dimension: report_definition_string_27 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_27 ;;
  }

  dimension: report_definition_string_28 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_28 ;;
  }

  dimension: report_definition_string_29 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_29 ;;
  }

  dimension: report_definition_string_3 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_3 ;;
  }

  dimension: report_definition_string_30 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_30 ;;
  }

  dimension: report_definition_string_31 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_31 ;;
  }

  dimension: report_definition_string_32 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_32 ;;
  }

  dimension: report_definition_string_33 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_33 ;;
  }

  dimension: report_definition_string_34 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_34 ;;
  }

  dimension: report_definition_string_35 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_35 ;;
  }

  dimension: report_definition_string_36 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_36 ;;
  }

  dimension: report_definition_string_37 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_37 ;;
  }

  dimension: report_definition_string_38 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_38 ;;
  }

  dimension: report_definition_string_39 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_39 ;;
  }

  dimension: report_definition_string_4 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_4 ;;
  }

  dimension: report_definition_string_40 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_40 ;;
  }

  dimension: report_definition_string_41 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_41 ;;
  }

  dimension: report_definition_string_42 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_42 ;;
  }

  dimension: report_definition_string_43 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_43 ;;
  }

  dimension: report_definition_string_44 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_44 ;;
  }

  dimension: report_definition_string_45 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_45 ;;
  }

  dimension: report_definition_string_46 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_46 ;;
  }

  dimension: report_definition_string_47 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_47 ;;
  }

  dimension: report_definition_string_48 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_48 ;;
  }

  dimension: report_definition_string_49 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_49 ;;
  }

  dimension: report_definition_string_5 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_5 ;;
  }

  dimension: report_definition_string_50 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_50 ;;
  }

  dimension: report_definition_string_6 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_6 ;;
  }

  dimension: report_definition_string_7 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_7 ;;
  }

  dimension: report_definition_string_8 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_8 ;;
  }

  dimension: report_definition_string_9 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_9 ;;
  }

  dimension: run_id {
    hidden: yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: rx_norm_method {
    type: string
    sql: ${TABLE}.RX_NORM_METHOD ;;
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

  dimension: source_system_id {
    hidden: yes
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
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_CONTRACT_ID ;;
  }

  dimension: src_sys_mgr_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_program_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_PROGRAM_ID ;;
  }

  dimension: strategy_based_flag {
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: system_accrue {
    type: string
    sql: ${TABLE}.SYSTEM_ACCRUE ;;
  }

  dimension: tb_calc_rule {
    type: string
    sql: ${TABLE}.TB_CALC_RULE ;;
  }

  dimension: tier_mgmt_type {
    type: string
    sql: ${TABLE}.TIER_MGMT_TYPE ;;
  }

  dimension: util_type {
    type: string
    sql: ${TABLE}.UTIL_TYPE ;;
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
    drill_fields: [program_name, grp_name, src_strategy_name, program_sub_type_name]
  }
}
