view: mn_mcd_adjust_type_dim_dt {
  derived_table: {
    sql: SELECT DISTINCT ADJUST_TYPE,SRC_SYS_ADJUST_TYPE_CODE,ADJUST_TYPE_NAME FROM MN_MCD_CLAIM_LINE_FACT_VW CLF
      CROSS JOIN MN_MCD_ADJUST_TYPE_DIM_VW MCDADJ WHERE
      BITAND(CLF.ADJUST_TYPE, MCDADJ.SRC_SYS_ADJUST_TYPE_CODE) = MCDADJ.SRC_SYS_ADJUST_TYPE_CODE
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: adjust_type {
    type: string
    sql: ${TABLE}.ADJUST_TYPE ;;
  }

  dimension: src_sys_adjust_type_code {
    type: string
    sql: ${TABLE}.SRC_SYS_ADJUST_TYPE_CODE ;;
  }

  dimension: adjust_type_name {
    type: string
    sql: ${TABLE}.ADJUST_TYPE_NAME ;;
  }

  set: detail {
    fields: [adjust_type, src_sys_adjust_type_code, adjust_type_name]
  }
}
