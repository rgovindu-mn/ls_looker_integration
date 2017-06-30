view: mn_pg_qual_ben_sd_rpt {
  sql_table_name: MN_PG_QUAL_BEN_SD_RPT_VW ;;

  dimension: baseline_period {
    type: string
    sql: ${TABLE}.BASELINE_PERIOD ;;
  }

  dimension: basis_type {
    type: string
    sql: ${TABLE}.BASIS_TYPE ;;
  }

  dimension: basis_unit {
    type: string
    sql: ${TABLE}.BASIS_UNIT ;;
  }

  dimension: config_description {
    type: string
    sql: ${TABLE}.CONFIG_DESCRIPTION ;;
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

  dimension: end_ver_num {
    type: string
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: int_price_reference {
    type: string
    sql: ${TABLE}.INT_PRICE_REFERENCE ;;
  }

  dimension: int_price_resolution_type {
    type: string
    sql: ${TABLE}.INT_PRICE_RESOLUTION_TYPE ;;
  }

  dimension: pg_tb_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PG_TB_WID ;;
  }

  dimension: prc_component_rpt_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.PRC_COMPONENT_RPT_WID ;;
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

  dimension: spreadsheet_name {
    type: string
    sql: ${TABLE}.SPREADSHEET_NAME ;;
  }

  dimension: spreadsheet_type {
    type: string
    sql: ${TABLE}.SPREADSHEET_TYPE ;;
  }

  dimension: src_sys_contract_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_CONTRACT_ID ;;
  }

  dimension: src_sys_prc_component_rpt_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_PRC_COMPONENT_RPT_ID ;;
  }

  dimension: tier_flag {
    type: string
    sql: ${TABLE}.TIER_FLAG ;;
  }

  dimension: tier_idx {
    type: number
    sql: ${TABLE}.TIER_IDX ;;
  }

  dimension: tier_value {
    type: string
    sql: ${TABLE}.TIER_VALUE ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.UNITS ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}.UOM ;;
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
    drill_fields: [spreadsheet_name]
  }
}
