view: mn_seller_hrc_dim {
  sql_table_name: LSETLDM.MN_SELLER_HRC_DIM ;;

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

  dimension: district_manager {
    type: string
    sql: ${TABLE}.DISTRICT_MANAGER ;;
  }

  dimension: district_manager_wid {
    type: string
    sql: ${TABLE}.DISTRICT_MANAGER_WID ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.DISTRICT_NAME ;;
  }

  dimension: district_num {
    type: string
    sql: ${TABLE}.DISTRICT_NUM ;;
  }

  dimension: enterprise_manager {
    type: string
    sql: ${TABLE}.ENTERPRISE_MANAGER ;;
  }

  dimension: enterprise_manager_wid {
    type: string
    sql: ${TABLE}.ENTERPRISE_MANAGER_WID ;;
  }

  dimension: enterprise_name {
    type: string
    sql: ${TABLE}.ENTERPRISE_NAME ;;
  }

  dimension: enterprise_num {
    type: string
    sql: ${TABLE}.ENTERPRISE_NUM ;;
  }

  dimension: region_manager {
    type: string
    sql: ${TABLE}.REGION_MANAGER ;;
  }

  dimension: region_manager_wid {
    type: string
    sql: ${TABLE}.REGION_MANAGER_WID ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.REGION_NAME ;;
  }

  dimension: region_num {
    type: string
    sql: ${TABLE}.REGION_NUM ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: seller_hrc_wid {
    type: string
    sql: ${TABLE}.SELLER_HRC_WID ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_territory_id {
    type: string
    sql: ${TABLE}.SRC_SYS_TERRITORY_ID ;;
  }

  dimension: terr_manager {
    type: string
    sql: ${TABLE}.TERR_MANAGER ;;
  }

  dimension: terr_manager_wid {
    type: string
    sql: ${TABLE}.TERR_MANAGER_WID ;;
  }

  dimension: terr_name {
    type: string
    sql: ${TABLE}.TERR_NAME ;;
  }

  dimension: terr_num {
    type: string
    sql: ${TABLE}.TERR_NUM ;;
  }

  measure: count {
    type: count
    drill_fields: [terr_name, region_name, enterprise_name, district_name]
  }
}
