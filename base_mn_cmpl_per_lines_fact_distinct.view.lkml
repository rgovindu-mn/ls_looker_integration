view: mn_cmpl_per_lines_fact_dist {
  derived_table: {
    sql:
        Select
          DISTINCT
          LINE_REF_NUM,
          PERIOD_WID,
          SALE_INV_DATE_WID,
          INV_QTY,
          INV_AMT_BASE,
          PRODUCT_WID,
          DATE_UPDATED,
          SALE_TYPE,
          UOM,
          SALE_SHIP_TO_CUST_WID,
          SALE_SOLD_TO_CUST_WID
        FROM
            MN_CMPL_PER_LINES_FACT_VW
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
    label: "Actual Volume"
    sql: ${inv_qty} ;;
  }

  measure: actual_revenue {
    type: sum
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
