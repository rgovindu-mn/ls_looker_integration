view: base_mn_rebate_prog_prod_map_all {
  derived_table: {
    sql: SELECT
      BASKET_WID,
      CONTRACT_TYPE,
      CONTRACT_TYPE_WID,
      DATE_CREATED,
      DATE_UPDATED,
      EFF_END_DATE,
      EFF_END_DATE_WID,
      EFF_START_DATE,
      EFF_START_DATE_WID,
      EXCLUDED_FLAG,
      INCLUDED_FROM_CTRT_FLAG,
      INCLUDED_FROM_PG_FLAG,
      MCO_PP_CAP_PERC,
      MCO_PP_THRESHOLD_PERC,
      MCO_PP_TOTAL_DISC_CAP_PERC,
      PRODUCT_TYPE,
      PRODUCT_WID,
      PROD_ADDED_DATE,
      PROD_ADDED_DATE_WID,
      PROGRAM_WID,
      RUN_ID,
      SOURCE_CTRT_ID,
      SOURCE_PG_ID,
      SOURCE_SYSTEM_ID,
      SRC_SYS_INCLUDED_LI_ID,
      SRC_SYS_STRUCT_LI_ID
      FROM MN_REBATE_PROG_PROD_MAP_ALL_VW
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: basket_wid {
    type: string
    sql: ${TABLE}.BASKET_WID ;;
  }

  dimension: contract_type {
    type: string
    sql: ${TABLE}.CONTRACT_TYPE ;;
  }

  dimension: contract_type_wid {
    type: string
    sql: ${TABLE}.CONTRACT_TYPE_WID ;;
  }

  dimension_group: date_created {
    type: time
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
    type: time
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension_group: eff_end_date {
    type: time
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension: eff_end_date_wid {
    type: string
    sql: ${TABLE}.EFF_END_DATE_WID ;;
  }

  dimension_group: eff_start_date {
    type: time
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension: eff_start_date_wid {
    type: string
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
    type: string
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension_group: prod_added_date {
    type: time
    sql: ${TABLE}.PROD_ADDED_DATE ;;
  }

  dimension: prod_added_date_wid {
    type: string
    sql: ${TABLE}.PROD_ADDED_DATE_WID ;;
  }

  dimension: program_wid {
    type: string
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_ctrt_id {
    type: string
    sql: ${TABLE}.SOURCE_CTRT_ID ;;
  }

  dimension: source_pg_id {
    type: string
    sql: ${TABLE}.SOURCE_PG_ID ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_included_li_id {
    type: string
    sql: ${TABLE}.SRC_SYS_INCLUDED_LI_ID ;;
  }

  dimension: src_sys_struct_li_id {
    type: string
    sql: ${TABLE}.SRC_SYS_STRUCT_LI_ID ;;
  }

  set: detail {
    fields: [
      basket_wid,
      contract_type,
      contract_type_wid,
      date_created_time,
      date_updated_time,
      eff_end_date_time,
      eff_end_date_wid,
      eff_start_date_time,
      eff_start_date_wid,
      excluded_flag,
      included_from_ctrt_flag,
      included_from_pg_flag,
      mco_pp_cap_perc,
      mco_pp_threshold_perc,
      mco_pp_total_disc_cap_perc,
      product_type,
      product_wid,
      prod_added_date_time,
      prod_added_date_wid,
      program_wid,
      run_id,
      source_ctrt_id,
      source_pg_id,
      source_system_id,
      src_sys_included_li_id,
      src_sys_struct_li_id
    ]
  }
}
