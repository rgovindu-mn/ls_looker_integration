view: mn_cmpl_per_lines_fact {
  sql_table_name: MN_CMPL_PER_LINES_FACT_VW ;;

  dimension: bucket_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.BUCKET_WID ;;
  }

  dimension: customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_WID ;;
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

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: external_sale_line_ref_num {
    type: string
    sql: ${TABLE}.EXTERNAL_SALE_LINE_REF_NUM ;;
  }

  dimension: external_sale_ref_num {
    type: string
    sql: ${TABLE}.EXTERNAL_SALE_REF_NUM ;;
  }

  dimension: inv_amt {
    type: number
    sql: ${TABLE}.INV_AMT ;;
  }

  dimension: inv_amt_curr {
    type: string
    sql: ${TABLE}.INV_AMT_CURR ;;
  }


  dimension: line_ref_num {
    type: number
    label: "Period Bucket Line Ref Num"
    sql: ${TABLE}.LINE_REF_NUM ;;
  }

  dimension: period_bucket_line_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.PERIOD_BUCKET_LINE_WID ;;
  }

  dimension: period_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PERIOD_WID ;;
  }

  dimension: product_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PRODUCT_WID ;;
  }



  dimension: report_market_share {
    type: string
    sql: ${TABLE}.REPORT_MARKET_SHARE ;;
  }

  dimension: report_tier_attained {
    type: string
    sql: ${TABLE}.REPORT_TIER_ATTAINED ;;
  }

  dimension: report_total_comp_revenue {
    type: string
    sql: ${TABLE}.REPORT_TOTAL_COMP_REVENUE ;;
  }

  dimension: report_total_comp_volume {
    type: string
    sql: ${TABLE}.REPORT_TOTAL_COMP_VOLUME ;;
  }

  dimension: report_total_int_revenue {
    type: string
    sql: ${TABLE}.REPORT_TOTAL_INT_REVENUE ;;
  }

  dimension: report_total_int_volume {
    type: string
    sql: ${TABLE}.REPORT_TOTAL_INT_VOLUME ;;
  }

  dimension: report_total_num_revenue {
    type: string
    sql: ${TABLE}.REPORT_TOTAL_NUM_REVENUE ;;
  }

  dimension: report_total_num_volume {
    type: string
    sql: ${TABLE}.REPORT_TOTAL_NUM_VOLUME ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension_group: sale_inv {
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
    sql: ${TABLE}.SALE_INV_DATE ;;
  }

  dimension: sale_inv_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.SALE_INV_DATE_WID ;;
  }

  dimension_group: invoice {
    type: time
    timeframes: [
      raw,
      year,
      quarter,
      month,
      date
    ]
    sql: TO_DATE(${TABLE}.SALE_INV_DATE_WID, 'YYYY-MM-DD') ;;
  }


  dimension: sale_ship_to_cust_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.SALE_SHIP_TO_CUST_WID ;;
  }

  dimension: sale_sold_to_cust_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.SALE_SOLD_TO_CUST_WID ;;
  }

  dimension: sale_type {
    type: string
    sql: ${TABLE}.SALE_TYPE ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}.UOM ;;
  }

# Measures
  measure: cmpl_reiod_lines_count {
    type: count
    drill_fields: []
  }

  dimension: inv_qty {
    type: number
    label: "Actual Volume"
    sql: ${TABLE}.INV_QTY ;;
  }

  dimension: inv_amt_base {
    type: number
    label: "Actual Revenue"
    sql: ${TABLE}.INV_AMT_BASE ;;
  }

  measure: actual_qty_value {
    type: sum
    sql: ${inv_qty} ;;
  }

  measure: actual_revenue {
    type: sum
    sql: ${inv_amt_base} ;;
  }

}
