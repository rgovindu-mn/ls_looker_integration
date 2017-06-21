view: mn_rbt_prog_qual_ben_dim {
  sql_table_name: MN_RBT_PROG_QUAL_BEN_DIM_VW ;;

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

  dimension: contract_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_TYPE_WID ;;
  }

  dimension: contract_type {
    type: string
    sql: ${TABLE}.CONTRACT_TYPE ;;
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

#   dimension_group: eff_end {
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
#     sql: ${TABLE}.EFF_END_DATE ;;
#   }
#
#   dimension_group: eff_start {
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
#     sql: ${TABLE}.EFF_START_DATE ;;
#   }

  dimension: end_ver_num {
    type: string
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: is_mb_component {
    type: string
    sql: ${TABLE}.IS_MB_COMPONENT ;;
  }

  dimension: is_qual_component {
    hidden: yes
    type: string
    sql: ${TABLE}.IS_QUAL_COMPONENT ;;
  }

  dimension: item_override_flag {
    type: string
    sql: ${TABLE}.ITEM_OVERRIDE_FLAG ;;
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

  dimension: program_qual_ben_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.PROGRAM_QUAL_BEN_WID ;;
  }

  dimension: program_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: sale_line_type {
    type: string
    sql: ${TABLE}.SALE_LINE_TYPE ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_component_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_COMPONENT_ID ;;
  }

  dimension: src_sys_contract_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_CONTRACT_ID ;;
  }

  dimension_group: src_sys_date_updated {
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
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension: src_sys_program_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_PROGRAM_ID ;;
  }

  dimension: src_sys_qual_ben_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_QUAL_BEN_ID ;;
  }

  dimension: strategy_based_flag {
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
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

  set: rebate_prog_qual_ben_fields_set {
    fields: [program_qual_ben_wid, program_wid, src_sys_qual_ben_id, name, component_name, component_type,
      description, strategy_based_flag, num_tiers, sale_line_type, item_override_flag, ver_num, end_ver_num,
      ver_start_date, ver_end_date, contract_type]
  }
}
