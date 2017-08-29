view: mn_rbt_ben_prod_map_all {
  sql_table_name: MN_RBT_BEN_PROD_MAP_ALL_VW ;;

# created this key as there is no primary key defined
  dimension: composite_primary_key {
    hidden: yes
    type: string
    primary_key: yes
    sql: ${program_ben_wid} ||'-'|| ${src_sys_struct_li_id} ;;
  }

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
    hidden: yes
    type: string
    sql: ${TABLE}.EXCLUDED_FLAG ;;
  }

  dimension: excluded_flag_yes_no {
    type: string
    label: "Is Excluded ?"
    sql: CASE WHEN ${excluded_flag} = 'Y' THEN 'Yes'
          WHEN ${excluded_flag} = 'N' THEN 'No' ELSE Null END ;;
  }

  dimension: included_from_ctrt_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.INCLUDED_FROM_CTRT_FLAG ;;
  }

  dimension: included_from_ctrt_yes_no {
    type: string
    label: "Is Included From Contract ?"
    sql: CASE WHEN ${included_from_ctrt_flag} = 'Y' THEN 'Yes'
        WHEN ${included_from_ctrt_flag} = 'N' THEN 'No' ELSE Null END ;;
  }

  dimension: included_from_pg_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.INCLUDED_FROM_PG_FLAG ;;
  }

  dimension: included_from_pg_yes_no {
    type: string
    label: "Is Included From Price Program ?"
    sql: CASE WHEN ${included_from_pg_flag} = 'Y' THEN 'Yes'
        WHEN ${included_from_pg_flag} = 'N' THEN 'No' ELSE Null END ;;
  }

  dimension: mco_pp_cap_perc {
    type: string
    label: "MCO Price Protection CAP Percentage"
    sql: ${TABLE}.MCO_PP_CAP_PERC*100 ;;
  }

  dimension: mco_pp_threshold_perc {
    type: string
    label: "MCO Price Protection Threshold Percentage"
    sql: ${TABLE}.MCO_PP_THRESHOLD_PERC*100 ;;
  }

  dimension: mco_pp_total_disc_cap_perc {
    type: string
    label: "MCO Price Protection Total Discount Percentage"
    sql: ${TABLE}.MCO_PP_TOTAL_DISC_CAP_PERC*100 ;;
  }

  dimension: override_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.OVERRIDE_FLAG ;;
  }

  dimension: override_yes_no {
    type: string
    sql: CASE WHEN ${override_flag} = 'Y' THEN 'Yes'
    WHEN ${override_flag} = 'N' THEN 'No' ELSE Null END ;;
    label: "Is Override ?"
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
    label: "Product Added"
  }

  dimension: prod_added_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PROD_ADDED_DATE_WID ;;
  }

  dimension: program_ben_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PROGRAM_BEN_WID ;;
  }

  dimension: run_id {
    hidden: yes
    type: string
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

  measure: no_of_benefit_products {
    type: sum
    sql: CASE WHEN (${product_wid} NULL OR ${excluded_flag} = 'Y') THEN 0 ELSE 1 END ;;
    label: "# of Benefit Products"
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      mco_pp_cap_perc,
      mco_pp_threshold_perc,
      mco_pp_total_disc_cap_perc,
      override_flag,
      product_wid,
      prod_added_date
    ]
  }


}
