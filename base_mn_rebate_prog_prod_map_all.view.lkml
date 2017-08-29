view: mn_rebate_prog_prod_map_all {
  sql_table_name: MN_REBATE_PROG_PROD_MAP_ALL_VW ;;

  dimension: basket_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.BASKET_WID ;;
  }

  dimension: contract_type {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_TYPE ;;
  }

  dimension: contract_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_TYPE_WID ;;
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

  dimension_group: eff_end {
    type: time
    label: "Effective End"
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

  dimension: eff_end_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.EFF_END_DATE_WID ;;
  }

  dimension_group: eff_start {
    type: time
    label: "Effective Start"
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

  dimension: eff_start_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.EFF_START_DATE_WID ;;
  }

  dimension: excluded_flag {
    type: string
    sql: ${TABLE}.EXCLUDED_FLAG ;;
  }

  dimension: included_from_ctrt_flag {
    type: string
    sql: ${TABLE}.INCLUDED_FROM_CTRT_FLAG ;;
  }

  dimension: included_from_pg_flag {
    type: string
    sql: ${TABLE}.INCLUDED_FROM_PG_FLAG ;;
  }

  dimension: mco_pp_cap_perc {
    type: string
    sql: ${TABLE}.MCO_PP_CAP_PERC ;;
  }

  dimension: mco_pp_threshold_perc {
    type: string
    sql: ${TABLE}.MCO_PP_THRESHOLD_PERC ;;
  }

  dimension: mco_pp_total_disc_cap_perc {
    type: string
    sql: ${TABLE}.MCO_PP_TOTAL_DISC_CAP_PERC ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.PRODUCT_TYPE ;;
  }

  dimension: product_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension_group: prod_added {
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
    sql: ${TABLE}.PROD_ADDED_DATE ;;
  }

  dimension: prod_added_date_wid {
    type: number
    sql: ${TABLE}.PROD_ADDED_DATE_WID ;;
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

  dimension: source_ctrt_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_CTRT_ID ;;
  }

  dimension: source_pg_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_PG_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_included_li_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_INCLUDED_LI_ID ;;
  }

  dimension: src_sys_struct_li_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_STRUCT_LI_ID ;;
  }

#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }
   set: detail {
    fields: [
      contract_type,
      excluded_flag,
      included_from_ctrt_flag,
      included_from_pg_flag,
      program_wid
    ]
  }
  set: rbt_prog_prod_fields_set {
    fields: [excluded_flag, eff_end_date, eff_end_month, eff_end_quarter, eff_end_raw, eff_end_time, eff_end_week,
      eff_end_year, eff_start_date, eff_start_month, eff_start_quarter, eff_start_raw, eff_start_time, eff_start_week,
      eff_start_year, prod_added_date, prod_added_month, prod_added_quarter, prod_added_raw, prod_added_time,
      prod_added_week, prod_added_year]
  }
}
