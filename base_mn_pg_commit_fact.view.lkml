view: mn_rbt_prog_qual_ben_sd_rpt {
  sql_table_name: MN_RBT_PROG_QUAL_BEN_SD_RPT_VW ;;

  dimension_group: adhoc {
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
    sql: ${TABLE}.ADHOC_DATE ;;
  }

  dimension: alt_uom {
    type: string
    sql: ${TABLE}.ALT_UOM ;;
    label: "Alt UOM"
  }

  dimension: baseline_period {
    type: string
    sql: ${TABLE}.BASELINE_PERIOD ;;
  }

  dimension: base_dos {
    type: string
    sql: ${TABLE}.BASE_DOS ;;
  }

  dimension_group: base_price_ref {
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
    sql: ${TABLE}.BASE_PRICE_REF_DATE ;;
  }

  dimension: calc_price_basis {
    type: string
    sql: ${TABLE}.CALC_PRICE_BASIS ;;
  }

  dimension: cap_percent {
    type: string
    sql: ${TABLE}.CAP_PERCENT ;;
  }

  dimension: condition_1 {
    type: string
    sql: ${TABLE}.CONDITION_1 ;;
  }

  dimension: condition_2 {
    type: string
    sql: ${TABLE}.CONDITION_2 ;;
  }

  dimension: condition_3 {
    type: string
    sql: ${TABLE}.CONDITION_3 ;;
  }

  dimension: condition_4 {
    type: string
    sql: ${TABLE}.CONDITION_4 ;;
  }

  dimension: condition_6 {
    type: string
    sql: ${TABLE}.CONDITION_6 ;;
  }

  dimension: condition_7 {
    type: string
    sql: ${TABLE}.CONDITION_7 ;;
  }

  dimension: condition_8 {
    type: string
    sql: ${TABLE}.CONDITION_8 ;;
  }

  dimension: condition_9 {
    type: string
    sql: ${TABLE}.CONDITION_9 ;;
  }

  dimension: condition_10 {
    type: string
    sql: ${TABLE}.CONDITION_10 ;;
  }

  dimension: cumulation_freq {
    type: string
    sql: ${TABLE}.CUMULATION_FREQ ;;
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

# *********** commenting as these exists in mn_rbt_prog_qual_ben_dim_vw ***************
#   dimension: description {
#     type: string
#     sql: ${TABLE}.DESCRIPTION ;;
#   }

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

  dimension: enable_bep_calc {
    type: string
    sql: ${TABLE}.ENABLE_BEP_CALC ;;
  }

  dimension: enable_custom_reset {
    type: string
    sql: ${TABLE}.ENABLE_CUSTOM_RESET ;;
  }

  dimension: enable_netting_flag {
    type: string
    sql: ${TABLE}.ENABLE_NETTING_FLAG ;;
  }

# *********** commenting as these exists in mn_rbt_prog_qual_ben_dim_vw ***************
#   dimension: end_ver_num {
#     type: string
#     sql: ${TABLE}.END_VER_NUM ;;
#   }

  dimension: filter_name {
    type: string
    sql: ${TABLE}.FILTER_NAME ;;
  }

  dimension: formulary_impact {
    type: string
    sql: ${TABLE}.FORMULARY_IMPACT ;;
  }

  dimension: formulary_mb_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.FORMULARY_MB_WID ;;
  }

  dimension: formulary_operator {
    type: string
    sql: ${TABLE}.FORMULARY_OPERATOR ;;
  }

  dimension: formulary_product_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.FORMULARY_PRODUCT_WID ;;
  }

  dimension: growth_type {
    type: string
    sql: ${TABLE}.GROWTH_TYPE ;;
  }

  dimension: include_admin_fee {
    type: string
    sql: ${TABLE}.INCLUDE_ADMIN_FEE ;;
  }

  dimension: is_dependent {
    type: string
    sql: ${TABLE}.IS_DEPENDENT ;;
  }
  dimension: is_round_qty_flag {
    type: string
    sql: ${TABLE}.IS_ROUND_QTY_FLAG ;;
  }

  dimension: manual_baseline_val {
    type: string
    sql: ${TABLE}.MANUAL_BASELINE_VAL ;;
  }

  dimension: max_increase {
    type: string
    sql: ${TABLE}.MAX_INCREASE ;;
  }

  dimension: mco_vol_basis {
    type: string
    sql: ${TABLE}.MCO_VOL_BASIS ;;
  }

  dimension: ms_basis {
    type: string
    sql: ${TABLE}.MS_BASIS ;;
  }

# *********** commenting as these exists in mn_rbt_prog_qual_ben_dim_vw ***************
  # dimension: name {
  #   type: string
  #   sql: ${TABLE}.NAME ;;
  # }

  dimension: number_of_weeks_span {
    type: string
    sql: ${TABLE}.NUMBER_OF_WEEKS_SPAN ;;
  }

# *********** commenting as these exists in mn_rbt_prog_qual_ben_dim_vw ***************
#   dimension: num_tiers {
#     type: string
#     sql: ${TABLE}.NUM_TIERS ;;
#   }

  dimension: pmon_alt_uom {
    type: string
    sql: ${TABLE}.PMON_ALT_UOM ;;
    label: "Pmon Alt UOM"
  }

  dimension: pmon_benefit_type {
    type: string
    sql: ${TABLE}.PMON_BENEFIT_TYPE ;;
  }

  dimension: pmon_calc_price_basis {
    type: string
    sql: ${TABLE}.PMON_CALC_PRICE_BASIS ;;
  }

  dimension: pmon_estimated_val {
    type: string
    sql: ${TABLE}.PMON_ESTIMATED_VAL ;;
  }

  dimension: pmon_mco_vol_basis {
    type: string
    sql: ${TABLE}.PMON_MCO_VOL_BASIS ;;
  }

  dimension: pmon_pl_type {
    type: string
    sql: ${TABLE}.PMON_PL_TYPE ;;
  }

  dimension: pmon_price_res_method {
    type: string
    sql: ${TABLE}.PMON_PRICE_RES_METHOD ;;
  }

  dimension: pp_schedule_basis {
    type: string
    sql: ${TABLE}.PP_SCHEDULE_BASIS ;;
  }

  dimension: pp_threshold {
    type: string
    sql: ${TABLE}.PP_THRESHOLD ;;
  }

  dimension: pp_type {
    type: string
    sql: ${TABLE}.PP_TYPE ;;
  }

  dimension: price_list_type {
    type: string
    sql: ${TABLE}.PRICE_LIST_TYPE ;;
  }

  dimension: price_ref_date {
    type: string
    sql: ${TABLE}.PRICE_REF_DATE ;;
  }

  dimension: price_res_method {
    type: string
    sql: ${TABLE}.PRICE_RES_METHOD ;;
  }

  dimension: program_qual_ben_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PROGRAM_QUAL_BEN_WID ;;
  }

  dimension: qty_basis {
    type: string
    sql: ${TABLE}.QTY_BASIS ;;
  }

  dimension: rbt_component_rpt_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.RBT_COMPONENT_RPT_WID ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: schedule_basis {
    type: string
    sql: ${TABLE}.SCHEDULE_BASIS ;;
  }

  dimension: sch_basis_custom_date {
    type: string
    sql: ${TABLE}.SCH_BASIS_CUSTOM_DATE ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.SEGMENT ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: spreadsheet_name {
    type: string
    sql: ${TABLE}.SPREADSHEET_NAME ;;
  }

  dimension: spreadsheet_type {
    type: string
    sql: ${TABLE}.SPREADSHEET_NAME ;;
  }

  dimension_group: src_sys_date_updated {
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
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension: src_sys_rbt_component_rpt_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_RBT_COMPONENT_RPT_ID ;;
  }

  dimension: tier_flag {
    type: string
    sql: ${TABLE}.TIER_FLAG ;;
  }

  dimension: tier_high_value {
    type: string
    sql: ${TABLE}.TIER_HIGH_VALUE ;;
  }

  dimension: tier_idx {
    type: string
    sql: ${TABLE}.TIER_IDX ;;
  }

  dimension: tier_low_value {
    type: string
    sql: ${TABLE}.TIER_LOW_VALUE ;;
  }

  dimension: tier_low_val_string {
    type: string
    sql: ${TABLE}.TIER_LOW_VAL_STRING ;;
  }

  dimension: total_disc_cap_percent {
    type: string
    sql: ${TABLE}.TOTAL_DISC_CAP_PERCENT ;;
  }

  dimension: unit_basis {
    type: string
    sql: ${TABLE}.UNIT_BASIS ;;
  }

# *********** commenting as these exists in mn_rbt_prog_qual_ben_dim_vw ***************
#   dimension_group: ver_end {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.VER_END_DATE ;;
#   }


#   dimension: ver_num {
#     type: string
#     sql: ${TABLE}.VER_NUM ;;
#   }

#   dimension_group: ver_start {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.VER_START_DATE ;;
#   }

  measure: count {
    type: count
    drill_fields: [rbt_component_rpt_wid]
  }

  set: rebate_program_ben_sd_rpt_additional_fields_set {
    fields: [pmon_alt_uom, pmon_benefit_type, pmon_calc_price_basis, pmon_estimated_val, pmon_mco_vol_basis,
      pmon_pl_type,pmon_price_res_method, pp_threshold, adhoc_date, adhoc_month, adhoc_quarter, adhoc_raw,
      adhoc_time, adhoc_week, adhoc_year, sch_basis_custom_date, pp_type, pp_schedule_basis, cumulation_freq,
      include_admin_fee, cap_percent, enable_bep_calc, enable_custom_reset, is_dependent, total_disc_cap_percent]
  }

####AUTO-GENERATED BY CODEGEN ver_num

  dimension: ver_num {
    type: number
    hidden: no
    sql: ${TABLE}.VER_NUM ;;
  }

####AUTO-GENERATED BY CODEGEN name

  dimension: name {
    type: string
    hidden: no
    sql: ${TABLE}.NAME ;;
  }

####AUTO-GENERATED BY CODEGEN spreadsheet_type

  dimension: spreadsheet_type {
    type: string
    hidden: no
    sql: ${TABLE}.SPREADSHEET_TYPE ;;
  }

####AUTO-GENERATED BY CODEGEN ver_start_date

  dimension_group: ver_start {
    type: time
    hidden: no
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

####AUTO-GENERATED BY CODEGEN ver_end_date

  dimension_group: ver_end {
    type: time
    hidden: no
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

####AUTO-GENERATED BY CODEGEN condition_4

  dimension: condition_4 {
    type: string
    hidden: no
    sql: ${TABLE}.CONDITION_4 ;;
  }

####AUTO-GENERATED BY CODEGEN end_ver_num

  dimension: end_ver_num {
    type: number
    hidden: no
    sql: ${TABLE}.END_VER_NUM ;;
  }

####AUTO-GENERATED BY CODEGEN num_tiers

  dimension: num_tiers {
    type: number
    hidden: no
    sql: ${TABLE}.NUM_TIERS ;;
  }

####AUTO-GENERATED BY CODEGEN description

  dimension: description {
    type: string
    hidden: no
    sql: ${TABLE}.DESCRIPTION ;;
  }

####AUTO-GENERATED BY CODEGEN condition_5

  dimension: condition_5 {
    type: string
    hidden: no
    sql: ${TABLE}.CONDITION_5 ;;
  }

}
