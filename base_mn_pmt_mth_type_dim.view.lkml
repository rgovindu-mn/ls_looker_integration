view: mn_pmt_mth_type_dim {
  sql_table_name: MN_PMT_MTH_TYPE_DIM_VW ;;

  dimension_group: date_created {
    type: time
    hidden:  yes
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
    hidden:  yes
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

  dimension: pmt_mth_type_desc {
    type: string
    label: "Payment Method Type"
    group_label: "Payment Method Type"
    sql: ${TABLE}.PMT_MTH_TYPE_DESC ;;
  }

  dimension: pmt_mth_type_name {
    type: string
    label: "Payment Method Type Description"
    group_label: "Payment Method Type"
    sql: ${TABLE}.PMT_MTH_TYPE_NAME ;;
  }

  dimension: pmt_mth_type_wid {
    hidden:  yes
    primary_key: yes
    type: number
    sql: ${TABLE}.PMT_MTH_TYPE_WID ;;
  }

  dimension: run_id {
    hidden:  yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden:  yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_pmt_mth_type_code {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PMT_MTH_TYPE_CODE ;;
  }

}
