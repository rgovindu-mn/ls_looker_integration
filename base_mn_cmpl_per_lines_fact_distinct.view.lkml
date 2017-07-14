view: mn_cmpl_per_lines_fact_dist {
  derived_table: {
    sql:
        Select
          DISTINCT
          S.LINE_REF_NUM,
          S.PERIOD_WID,
          S.SALE_INV_DATE_WID,
          S.INV_QTY,
          S.INV_AMT_BASE,
          S.PRODUCT_WID,
          S.DATE_UPDATED,
          S.SALE_TYPE,
          B.SRC_SYS_TB_ID,
          S.UOM,
          S.SALE_SHIP_TO_CUST_WID,
          S.SALE_SOLD_TO_CUST_WID,
          PGQB.PG_TB_WID
        FROM
        MN_CMPL_PER_LINES_FACT_VW S
        LEFT JOIN MN_CMPL_BUCKET_FACT_VW B ON S.BUCKET_WID=B.BUCKET_WID
        LEFT JOIN MN_PG_QUAL_BEN_DIM_VW PGQB ON
          (CASE WHEN PGQB.STRATEGY_BASED_FLAG='Y' THEN PGQB.SRC_SYS_COMPONENT_ID ELSE PGQB.SRC_SYS_TB_ID END) = B.SRC_SYS_TB_ID
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: unique_id {
    hidden: yes
    type: string
    primary_key: yes
    sql: ${TABLE}.LINE_REF_NUM || '-' || ${TABLE}.PERIOD_WID  ;;
  }

  dimension: line_ref_num {
    type: string
    sql: ${TABLE}.LINE_REF_NUM ;;
  }

  dimension: period_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PERIOD_WID ;;
  }

  dimension: sale_inv_date_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.SALE_INV_DATE_WID ;;
  }

  dimension: inv_qty {
    type: string
    sql: ${TABLE}.INV_QTY ;;
  }

  dimension: inv_amt_base {
    type: string
    sql: ${TABLE}.INV_AMT_BASE ;;
  }

  dimension: product_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension_group: date_updated {
    type: time
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: sale_type {
    type: string
    sql: ${TABLE}.SALE_TYPE ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}.UOM ;;
  }

  dimension: sale_ship_to_cust_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.SALE_SHIP_TO_CUST_WID ;;
  }

  dimension: sale_sold_to_cust_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.SALE_SOLD_TO_CUST_WID ;;
  }

  measure: actual_qty_value {
    type: sum
    label: "Period Actual Volume"
    sql: ${inv_qty} ;;
  }

  measure: actual_revenue {
    type: sum
    label: "Period Actual Revenue"
    sql: ${inv_amt_base} ;;
  }

  set: detail {
    fields: [
      line_ref_num,
      period_wid,
      sale_inv_date_wid,
      inv_qty,
      inv_amt_base,
      product_wid,
      date_updated_time,
      sale_type,
      uom,
      sale_ship_to_cust_wid,
      sale_sold_to_cust_wid
    ]
  }
}
