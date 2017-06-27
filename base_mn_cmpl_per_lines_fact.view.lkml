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

  dimension: report_alias_num_1 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_1 ;;
  }

  dimension: report_alias_num_10 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_10 ;;
  }

  dimension: report_alias_num_11 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_11 ;;
  }

  dimension: report_alias_num_12 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_12 ;;
  }

  dimension: report_alias_num_13 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_13 ;;
  }

  dimension: report_alias_num_14 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_14 ;;
  }

  dimension: report_alias_num_15 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_15 ;;
  }

  dimension: report_alias_num_16 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_16 ;;
  }

  dimension: report_alias_num_17 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_17 ;;
  }

  dimension: report_alias_num_18 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_18 ;;
  }

  dimension: report_alias_num_19 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_19 ;;
  }

  dimension: report_alias_num_2 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_2 ;;
  }

  dimension: report_alias_num_20 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_20 ;;
  }

  dimension: report_alias_num_21 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_21 ;;
  }

  dimension: report_alias_num_22 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_22 ;;
  }

  dimension: report_alias_num_23 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_23 ;;
  }

  dimension: report_alias_num_24 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_24 ;;
  }

  dimension: report_alias_num_25 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_25 ;;
  }

  dimension: report_alias_num_26 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_26 ;;
  }

  dimension: report_alias_num_27 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_27 ;;
  }

  dimension: report_alias_num_28 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_28 ;;
  }

  dimension: report_alias_num_29 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_29 ;;
  }

  dimension: report_alias_num_3 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_3 ;;
  }

  dimension: report_alias_num_30 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_30 ;;
  }

  dimension: report_alias_num_31 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_31 ;;
  }

  dimension: report_alias_num_32 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_32 ;;
  }

  dimension: report_alias_num_33 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_33 ;;
  }

  dimension: report_alias_num_34 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_34 ;;
  }

  dimension: report_alias_num_35 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_35 ;;
  }

  dimension: report_alias_num_36 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_36 ;;
  }

  dimension: report_alias_num_37 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_37 ;;
  }

  dimension: report_alias_num_38 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_38 ;;
  }

  dimension: report_alias_num_39 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_39 ;;
  }

  dimension: report_alias_num_4 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_4 ;;
  }

  dimension: report_alias_num_40 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_40 ;;
  }

  dimension: report_alias_num_41 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_41 ;;
  }

  dimension: report_alias_num_42 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_42 ;;
  }

  dimension: report_alias_num_43 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_43 ;;
  }

  dimension: report_alias_num_44 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_44 ;;
  }

  dimension: report_alias_num_45 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_45 ;;
  }

  dimension: report_alias_num_46 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_46 ;;
  }

  dimension: report_alias_num_47 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_47 ;;
  }

  dimension: report_alias_num_48 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_48 ;;
  }

  dimension: report_alias_num_49 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_49 ;;
  }

  dimension: report_alias_num_5 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_5 ;;
  }

  dimension: report_alias_num_50 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_50 ;;
  }

  dimension: report_alias_num_6 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_6 ;;
  }

  dimension: report_alias_num_7 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_7 ;;
  }

  dimension: report_alias_num_8 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_8 ;;
  }

  dimension: report_alias_num_9 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_NUM_9 ;;
  }

  dimension: report_alias_string_1 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_1 ;;
  }

  dimension: report_alias_string_10 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_10 ;;
  }

  dimension: report_alias_string_11 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_11 ;;
  }

  dimension: report_alias_string_12 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_12 ;;
  }

  dimension: report_alias_string_13 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_13 ;;
  }

  dimension: report_alias_string_14 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_14 ;;
  }

  dimension: report_alias_string_15 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_15 ;;
  }

  dimension: report_alias_string_16 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_16 ;;
  }

  dimension: report_alias_string_17 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_17 ;;
  }

  dimension: report_alias_string_18 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_18 ;;
  }

  dimension: report_alias_string_19 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_19 ;;
  }

  dimension: report_alias_string_2 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_2 ;;
  }

  dimension: report_alias_string_20 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_20 ;;
  }

  dimension: report_alias_string_21 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_21 ;;
  }

  dimension: report_alias_string_22 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_22 ;;
  }

  dimension: report_alias_string_23 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_23 ;;
  }

  dimension: report_alias_string_24 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_24 ;;
  }

  dimension: report_alias_string_25 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_25 ;;
  }

  dimension: report_alias_string_26 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_26 ;;
  }

  dimension: report_alias_string_27 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_27 ;;
  }

  dimension: report_alias_string_28 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_28 ;;
  }

  dimension: report_alias_string_29 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_29 ;;
  }

  dimension: report_alias_string_3 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_3 ;;
  }

  dimension: report_alias_string_30 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_30 ;;
  }

  dimension: report_alias_string_31 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_31 ;;
  }

  dimension: report_alias_string_32 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_32 ;;
  }

  dimension: report_alias_string_33 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_33 ;;
  }

  dimension: report_alias_string_34 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_34 ;;
  }

  dimension: report_alias_string_35 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_35 ;;
  }

  dimension: report_alias_string_36 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_36 ;;
  }

  dimension: report_alias_string_37 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_37 ;;
  }

  dimension: report_alias_string_38 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_38 ;;
  }

  dimension: report_alias_string_39 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_39 ;;
  }

  dimension: report_alias_string_4 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_4 ;;
  }

  dimension: report_alias_string_40 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_40 ;;
  }

  dimension: report_alias_string_41 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_41 ;;
  }

  dimension: report_alias_string_42 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_42 ;;
  }

  dimension: report_alias_string_43 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_43 ;;
  }

  dimension: report_alias_string_44 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_44 ;;
  }

  dimension: report_alias_string_45 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_45 ;;
  }

  dimension: report_alias_string_46 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_46 ;;
  }

  dimension: report_alias_string_47 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_47 ;;
  }

  dimension: report_alias_string_48 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_48 ;;
  }

  dimension: report_alias_string_49 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_49 ;;
  }

  dimension: report_alias_string_5 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_5 ;;
  }

  dimension: report_alias_string_50 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_50 ;;
  }

  dimension: report_alias_string_6 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_6 ;;
  }

  dimension: report_alias_string_7 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_7 ;;
  }

  dimension: report_alias_string_8 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_8 ;;
  }

  dimension: report_alias_string_9 {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_ALIAS_STRING_9 ;;
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


}
