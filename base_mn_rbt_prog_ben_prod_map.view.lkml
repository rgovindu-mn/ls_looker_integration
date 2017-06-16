view: mn_rbt_prog_ben_prod_map {
  sql_table_name: MN_RBT_PROG_BEN_PROD_MAP_VW ;;

  dimension: basket_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.BASKET_WID ;;
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
    sql: NULLIF(${TABLE}.EFF_END_DATE, To_Date('07/03/1776','mm/dd/yyyy')) ;;
  }

  dimension: eff_end_date_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.EFF_END_DATE_WID ;;
  }

  dimension_group: eff_start {
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
    sql:  NULLIF(${TABLE}.EFF_START_DATE, To_Date('07/03/1776','mm/dd/yyyy')) ;;
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

  dimension: included_from_contract_flag {
    type: string
    label: "Is Included From Contract?"
    sql: ${TABLE}.INCLUDED_FROM_CTRT_FLAG ;;
  }

  dimension: included_from_pg_flag {
    type: string
    label: "Is Included From Price Program?"
    sql: ${TABLE}.INCLUDED_FROM_PG_FLAG ;;
  }

  dimension: mco_pp_cap_perc {
    type: string
    sql: ${TABLE}.MCO_PP_CAP_PERC *100 ;;
  }

  dimension: mco_pp_threshold_perc {
    type: string
    sql: ${TABLE}.MCO_PP_THRESHOLD_PERC *100 ;;
  }

  dimension: mco_pp_total_disc_cap_perc {
    type: string
    sql: ${TABLE}.MCO_PP_TOTAL_DISC_CAP_PERC *100;;
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
    hidden: yes
    type: number
    sql: ${TABLE}.PROD_ADDED_DATE_WID ;;
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

  dimension: program_ben_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PROGRAM_BEN_WID ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_ctrt_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SOURCE_CTRT_ID ;;
  }

  dimension: source_pg_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SOURCE_PG_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_included_li_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_INCLUDED_LI_ID ;;
  }

  dimension: src_sys_struct_li_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_STRUCT_LI_ID ;;
  }



  measure: count {
    type: count
    drill_fields: []
  }
}
