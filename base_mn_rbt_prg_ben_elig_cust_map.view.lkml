view: mn_rbt_prg_ben_elig_cust_map {
  sql_table_name: MN_RBT_PRG_BEN_ELIG_CUST_MAP ;;

  dimension: commit_customer_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.COMMIT_CUSTOMER_WID ;;
  }

  dimension_group: comp_elig_end {
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
    sql: ${TABLE}.COMP_ELIG_END_DATE ;;
  }

  dimension_group: comp_elig_start {
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
    sql: ${TABLE}.COMP_ELIG_START_DATE ;;
  }

  dimension_group: component_eff_end {
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
    sql: ${TABLE}.COMPONENT_EFF_END_DATE ;;
  }

  dimension_group: component_eff_start {
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
    sql: ${TABLE}.COMPONENT_EFF_START_DATE ;;
  }

  dimension: contract_type_wid {
    hidden: yes
    type: string
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

  dimension: elig_customer_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ELIG_CUSTOMER_WID ;;
  }

  dimension_group: elig_end {
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
    sql: ${TABLE}.ELIG_END_DATE ;;
  }

  dimension: elig_end_date_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ELIG_END_DATE_WID ;;
  }

  dimension_group: elig_start {
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
    sql: ${TABLE}.ELIG_START_DATE ;;
  }

  dimension: elig_start_date_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ELIG_START_DATE_WID ;;
  }

  dimension: program_ben_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PROGRAM_BEN_WID ;;
  }

  dimension: program_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: run_id {
    hidden: yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}.SNAPSHOT_DATE ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_commit_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_COMMIT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
