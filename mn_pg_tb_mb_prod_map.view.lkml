view: mn_pg_tb_mb_prod_map {
  sql_table_name: MN_PG_TB_MB_PROD_MAP_VW ;;

  dimension: basket_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.BASKET_WID ;;
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

  dimension: eff_end_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.EFF_END_DATE_WID ;;
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

  dimension: eff_start_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.EFF_START_DATE_WID ;;
  }

  dimension: excluded_flag {
    type: string
    sql: ${TABLE}.EXCLUDED_FLAG ;;
  }

  dimension: pg_tier_basis_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PG_TIER_BASIS_WID ;;
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

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
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
