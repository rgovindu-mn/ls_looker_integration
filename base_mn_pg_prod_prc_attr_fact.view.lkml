view: mn_pg_prod_prc_attr_fact {
  sql_table_name: LSETLDM.MN_PG_PROD_PRC_ATTR_FACT ;;

  dimension: attr_name {
    type: string
    sql: ${TABLE}.ATTR_NAME ;;
  }

  dimension: attr_value {
    type: string
    sql: ${TABLE}.ATTR_VALUE ;;
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
    hidden: yes
    type: number
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: pg_prod_prc_attr_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PG_PROD_PRC_ATTR_WID ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_pg_prod_prc_attr_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PG_PROD_PRC_ATTR_ID ;;
  }

  dimension: src_sys_struct_li_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_STRUCT_LI_ID ;;
  }

  dimension_group: ver_end {
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
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: ver_num {
    type: number
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension_group: ver_start {
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
    sql: ${TABLE}.VER_START_DATE ;;
  }

}
