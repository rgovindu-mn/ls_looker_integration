view: mn_cmpl_period_pkg_dim {
  sql_table_name: MN_CMPL_PERIOD_PKG_DIM_VW ;;

  dimension: cmpl_period_pkg_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.CMPL_PERIOD_PKG_WID ;;
  }

  dimension: command_status {
    type: string
    sql: ${TABLE}.COMMAND_STATUS ;;
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

  dimension_group: grp_by_period_rfp {
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
    sql: ${TABLE}.GRP_BY_PERIOD_RFP ;;
  }

  dimension: grping_rule {
    type: string
    sql: ${TABLE}.GRPING_RULE ;;
  }

  dimension: mem_id_analyst {
    type: string
    sql: ${TABLE}.MEM_ID_ANALYST ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }

  dimension: per_pkg_id_num {
    type: string
    sql: ${TABLE}.PER_PKG_ID_NUM ;;
  }

  dimension: per_pkg_name {
    type: string
    sql: ${TABLE}.PER_PKG_NAME ;;
  }

  dimension: period_pkg_end_ver_num {
    type: string
    sql: ${TABLE}.PERIOD_PKG_END_VER_NUM ;;
  }

  dimension: period_pkg_status {
    type: string
    sql: ${TABLE}.PERIOD_PKG_STATUS ;;
  }

  dimension_group: period_pkg_ver_end {
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
    sql: ${TABLE}.PERIOD_PKG_VER_END_DATE ;;
  }

  dimension: period_pkg_ver_num {
    type: string
    sql: ${TABLE}.PERIOD_PKG_VER_NUM ;;
  }

  dimension_group: period_pkg_ver_start {
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
    sql: ${TABLE}.PERIOD_PKG_VER_START_DATE ;;
  }

  dimension: program_based_flag {
    type: string
    sql: ${TABLE}.PROGRAM_BASED_FLAG ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension_group: src_sys_date_created {
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
    sql: ${TABLE}.SRC_SYS_DATE_CREATED ;;
  }

  dimension_group: src_sys_date_updated {
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
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension: src_sys_grp_by_comm_cust_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_GRP_BY_COMM_CUST_ID ;;
  }

  dimension: src_sys_grp_by_ctrt_cust_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_GRP_BY_CTRT_CUST_ID ;;
  }

  dimension: src_sys_grp_by_ctrt_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_GRP_BY_CTRT_ID ;;
  }

  dimension: src_sys_grp_by_currency {
    type: string
    sql: ${TABLE}.SRC_SYS_GRP_BY_CURRENCY ;;
  }

  dimension: src_sys_mem_id_created {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_MEM_ID_CREATED ;;
  }

  dimension: src_sys_mem_id_updated {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_MEM_ID_UPDATED ;;
  }

  dimension: src_sys_org_unit_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_ORG_UNIT_ID ;;
  }

  dimension: src_sys_period_pkg_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_PERIOD_PKG_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [per_pkg_name]
  }
}
