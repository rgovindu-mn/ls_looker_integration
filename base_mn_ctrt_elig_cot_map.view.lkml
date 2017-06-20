view: mn_ctrt_elig_cot_map {
  sql_table_name: MN_CTRT_ELIG_COT_MAP_VW ;;

  dimension: contract_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: cot_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.COT_WID ;;
  }

  dimension: ctrt_ver_num {
    type: number
    sql: ${TABLE}.CTRT_VER_NUM ;;
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


  dimension_group: eff_start {
    type: time
    label: "COT Effective Start"
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

  dimension_group: eff_end {
    type: time
    label: "COT Effective End"
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

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_contract_cot_id {
    type: number
    sql: ${TABLE}.SRC_SYS_CONTRACT_COT_ID ;;
  }

  dimension: src_sys_contract_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_CONTRACT_ID ;;
  }

  dimension: ver_num {
    type: number
    sql: ${TABLE}.VER_NUM ;;
  }

}
