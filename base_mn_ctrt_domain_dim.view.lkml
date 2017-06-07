view: mn_ctrt_domain_dim {
  sql_table_name: MN_CTRT_DOMAIN_DIM_VW ;;

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

  dimension: domain_desc {
    type: string
    label: "Contract Domain Description"
    sql: ${TABLE}.DOMAIN_DESC ;;
  }

  dimension: domain_name {
    type: string
    label: "Contract Domain Name"
    sql: ${TABLE}.DOMAIN_NAME ;;
  }

  dimension: domain_wid {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.DOMAIN_WID ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_domain_code {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_DOMAIN_CODE ;;
  }

}
