view: mn_cmt_change_reason_dim {
  sql_table_name: MN_CMT_CHANGE_REASON_DIM_VW ;;

  dimension: cmt_change_code_desc {
    type: string
    sql: ${TABLE}.CMT_CHANGE_CODE_DESC ;;
  }

  dimension: cmt_change_code_name {
    type: string
    sql: ${TABLE}.CMT_CHANGE_CODE_NAME ;;
  }

  dimension: cmt_change_code_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.CMT_CHANGE_CODE_WID ;;
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

  dimension: src_sys_cmt_change_code {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_CMT_CHANGE_CODE ;;
  }

#   measure: count {
#     type: count
#     drill_fields: [cmt_change_code_name]
#   }
}
