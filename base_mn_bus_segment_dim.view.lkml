view: mn_bus_segment_dim {
  sql_table_name: MN_BUS_SEGMENT_DIM_VW ;;

  dimension: bus_seg_code {
    type: string
    group_label: "Pricing Program"
    label: "Business Segment Code"
    sql: ${TABLE}.BUS_SEG_CODE ;;
  }

  dimension: bus_seg_name {
    type: string
    group_label: "Pricing Program"
    label: "Business Segment Name"
    sql: ${TABLE}.BUS_SEG_NAME ;;
  }

  dimension: bus_seg_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.BUS_SEG_WID ;;
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

  dimension: org_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: run_id {
    hidden: yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_bus_seg_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_BUS_SEG_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [bus_seg_name]
  }
}
