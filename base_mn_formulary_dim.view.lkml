view: mn_formulary_dim {
  sql_table_name: MN_FORMULARY_DIM_VW ;;

  dimension: src_sys_formulary_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_FORMULARY_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: run_id {
    hidden: yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: pbm_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PBM_WID ;;
  }

  dimension: national_flag {
    type: string
    sql: case when ${TABLE}.NATIONAL_FLAG = 1 then 'Yes' else 'No' end ;;
  }

  dimension: lifecycle_status {
    type: string
    sql: ${TABLE}.LIFECYCLE_STATUS ;;
  }

  dimension: formulary_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.FORMULARY_WID ;;
  }

  dimension: formulary_name {
    type: string
    sql: ${TABLE}.FORMULARY_NAME ;;
  }

  dimension_group: eff_start {
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
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension_group: eff_end {
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
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension: default_flag {
    type: string
    sql: case when ${TABLE}.DEFAULT_FLAG = 1 then 'Yes' else 'No' end  ;;
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

  measure: count {
    type: count
    drill_fields: [formulary_name]
  }
}
