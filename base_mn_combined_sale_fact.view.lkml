view: mn_combined_sale_fact {

  derived_table: {
    sql: SELECT
            ADM_FEE_AMT,
            BASE_PRICE,
            BASIC_RBT_AMT,
            BA_REF_NUM,
            BILL_TO_CUSTOMER_WID,
            BRANCH_DISTR_WID,
            CHARGEBACK_FLAG,
            CHGBK_AMT,
            CHGBK_CLOSE_DATE,
            CHGBK_CLOSE_DATE_WID,
            CLOSE_DATE_WID,
            COMMENTS,
            CONTRACT_AMT,
            CONTRACT_WID,
            COT_WID,
            CUSTOMER_WID,
            CUSTOM_TYPE1_WID,
            CUSTOM_TYPE2_WID,
            CUSTOM_TYPE3_WID,
            DEAL_DOC_WID,
            DISTR_COST_AMT,
            DIST_SRVS_FEE_AMT,
            EXCHANGE_RATE,
            fee_for_srvs_amt,
            GPO_WID,
            IDN_WID,
            INTERNAL_LINE_ID,
            INV_AMT AS INV_AMT,
            INV_DATE_WID,
            INV_QTY,
            INV_UOM,
            IR_RBT_AMT,
            LIFECYCLE_STATUS,
            LIFECYCLE_STATUS_NAME,
            LINE_REF_NUM,
            LINE_SEVERITY,
            LINE_SEVERITY_NAME,
            LIST_PRICE,
            LOAD_DATE,
            ORG_WID,
            PAID_CHGBK_AMT,
            PAID_DATE_WID,
            PARENT_DISTR_WID,
            PG_COMMIT_WID,
            PG_WID,
            PRC_CONDITION_CODE1,
            PRC_CONDITION_CODE2,
            PROCESS_DATE_WID,
            PRODUCT_WID,
            RECEIVED_DATE,
            REVERSAL_STATUS,
            REVERSAL_STATUS_NAME,
            SALE_CURR,
            SHIP_TO_CUSTOMER_WID,
            SOLD_TO_CUSTOMER_WID,
            SRC_MODEL_DATE,
            SRC_SYS_COMMIT_ID,
            SUBMISSION_NUM,
            SUB_CLOSE_DATE,
            TIER_IDX,
            TOTAL_APPR_REBATE,
            TOTAL_CHGBK_AMT,
            TOTAL_DISCREPANCY_AMT,
            TOTAL_DISTR_COST_AMT,
            TOTAL_RBT_AMT,
            EXTERNAL_CONTRACT_QTY,
            EXTERNAL_CONTRACT_AMT,
            NVL(BRANCH_DISTR_WID, PARENT_DISTR_WID) AS DISTR_WID,
            'Indirect' as SALE_TYPE
         FROM MN_INDIR_SALE_FACT_VW
        UNION
        SELECT ADM_FEE_AMT,
            BASE_PRICE,
            BASIC_RBT_AMT,
            NULL ,
            BILL_TO_CUSTOMER_WID,
            NULL ,
            NULL ,
            NULL ,
            NULL ,
            NULL ,
            CLOSE_DATE_WID,
            COMMENTS,
            CONTRACT_AMT,
            CONTRACT_WID,
            COT_WID,
            CUSTOMER_WID,
            CUSTOM_TYPE1_WID,
            CUSTOM_TYPE2_WID,
            CUSTOM_TYPE3_WID,
            DEAL_DOC_WID,
            NULL ,
            DIST_SRVS_FEE_AMT,
            EXCHANGE_RATE,
            fee_for_srvs_amt,
            GPO_WID,
            IDN_WID,
            INTERNAL_LINE_ID,
            INV_AMT,
            INV_DATE_WID,
            INV_QTY ,
            INV_UOM,
            IR_RBT_AMT,
            LIFECYCLE_STATUS,
            LIFECYCLE_STATUS_NAME,
            LINE_REF_NUM,
            LINE_SEVERITY,
            LINE_SEVERITY_NAME,
            LIST_PRICE,
            LOAD_DATE,
            ORG_WID,
            NULL ,
            PAID_DATE_WID,
            CUSTOMER_WID AS PARENT_DISTR_WID,
            PG_COMMIT_WID,
            PG_WID,
            PRC_CONDITION_CODE1,
            PRC_CONDITION_CODE2,
            PROCESS_DATE_WID,
            PRODUCT_WID,
            RECEIVED_DATE,
            REVERSAL_STATUS,
            REVERSAL_STATUS_NAME,
            SALE_CURR,
            SHIP_TO_CUSTOMER_WID,
            SOLD_TO_CUSTOMER_WID,
            SRC_MODEL_DATE,
            SRC_SYS_COMMIT_ID,
            SUBMISSION_NUM,
            SUB_CLOSE_DATE,
            TIER_IDX,
            NULL ,
            NULL ,
            NULL ,
            NULL ,
            TOTAL_RBT_AMT,
            NULL,
            NULL,
            CUSTOMER_WID AS DISTR_WID,
            'Direct' as SALE_TYPE
        FROM MN_DIR_SALE_FACT_VW
       ;;
  }


  dimension: access_user_wid {
    type: string
    sql: ${mn_user_access_sale_map.user_wid};;
  }


  dimension: access_user_name {
    type: string
    sql: ${mn_user_access_sale_map.user_name};;
  }

  dimension: adm_fee_amt {
    type: number
    label: "Admin Fee"
    sql: ${TABLE}.ADM_FEE_AMT ;;
  }

  dimension: sale_type {
    type: string
    sql: ${TABLE}.SALE_TYPE ;;
  }

  dimension: base_price {
    type: number
    sql: ${TABLE}.BASE_PRICE ;;
  }

  dimension: basic_rbt_amt {
    type: number
    label: "Basic Rebate"
    sql: ${TABLE}.BASIC_RBT_AMT ;;
  }

  dimension: bill_to_customer_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.BILL_TO_CUSTOMER_WID ;;
  }

  dimension: branch_distr_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.BRANCH_DISTR_WID ;;
  }

  dimension: chargeback_flag {
    hidden:  yes
    type: string
    sql: ${TABLE}.CHARGEBACK_FLAG ;;
  }

  dimension: chgbk_amt {
    type: number
    label: "Chargeback Amount"
    sql: ${TABLE}.CHGBK_AMT ;;
  }

  dimension_group: chgbk_close {
    type: time
    label: "Chargeback Close"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CHGBK_CLOSE_DATE ;;
  }

  dimension: chgbk_close_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.CHGBK_CLOSE_DATE_WID ;;
  }

  dimension: close_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.CLOSE_DATE_WID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.COMMENTS ;;
  }

  dimension: contract_amt {
    type: number
    label: "Contract Amount"
    sql: ${TABLE}.CONTRACT_AMT ;;
  }

  dimension: contract_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: cot_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.COT_WID ;;
  }

  dimension: custom_type1_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.CUSTOM_TYPE1_WID ;;
  }

  dimension: custom_type2_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.CUSTOM_TYPE2_WID ;;
  }

  dimension: custom_type3_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.CUSTOM_TYPE3_WID ;;
  }

  dimension: customer_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension: deal_doc_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.DEAL_DOC_WID ;;
  }

  dimension: distr_cost_amt {
    type: number
    label: "Distributor Cost"
    sql: ${TABLE}.DISTR_COST_AMT ;;
  }

  dimension: distr_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.DISTR_WID ;;
  }

  dimension: exchange_rate {
    type: number
    hidden:  yes
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: external_contract_qty {
    type: number
    sql: ${TABLE}.EXTERNAL_CONTRACT_QTY ;;
  }

  dimension: external_contract_amt {
    type: number
    sql: ${TABLE}.EXTERNAL_CONTRACT_AMT ;;
  }

  dimension: fee_for_srvs_amt {
    type: number
    label: "Fee for Service"
    sql: ${TABLE}.FEE_FOR_SRVS_AMT ;;
  }

  dimension: gpo_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.GPO_WID ;;
  }

  dimension: idn_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.IDN_WID ;;
  }

  dimension: internal_line_id {
    type: string
    sql: ${TABLE}.INTERNAL_LINE_ID ;;
  }

  dimension: inv_amt {
    type: number
    label: "Invoice Price"
    sql: ${TABLE}.INV_AMT ;;
  }

  dimension: inv_date_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.INV_DATE_WID ;;
  }

  dimension: inv_qty {
    type: number
    label: "Invoice quantity"
    sql: ${TABLE}.INV_QTY ;;
  }

  dimension: inv_revenue {
    type: number
    label: "Invoice Revenue"
    sql: ${inv_qty} * ${inv_amt} ;;
  }

  dimension: line_list_revenue {
    type: number
    label: "On-Invoice Revenue"
    sql: ${inv_qty} *NVL( ${list_price}, ${inv_amt}) ;;
  }

  dimension: inv_uom {
    type: string
    label: "Invoice UOM"
    sql: ${TABLE}.INV_UOM ;;
  }

  dimension: ir_rbt_amt {
    type: number
    label: "Incentive Rebate"
    sql: ${TABLE}.IR_RBT_AMT ;;
  }

  dimension: lifecycle_status {
    hidden:  yes
    type: string
    sql: ${TABLE}.LIFECYCLE_STATUS ;;
  }

  dimension: lifecycle_status_name {
    type: string
    label: "Lifecycle Status"
    sql: ${TABLE}.LIFECYCLE_STATUS_NAME ;;
  }

  dimension: line_ref_num {
    type: string
    primary_key: yes
    sql: ${TABLE}.LINE_REF_NUM ;;
  }

  dimension: line_severity {
    hidden:  yes
    type: string
    sql: ${TABLE}.LINE_SEVERITY ;;
  }

  dimension: line_severity_name {
    type: string
    label: "Line Severity"
    sql: ${TABLE}.LINE_SEVERITY_NAME ;;
  }

  dimension: list_price {
    type: number
    sql: ${TABLE}.LIST_PRICE ;;
  }

  dimension_group: load {
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
    sql: ${TABLE}.LOAD_DATE ;;
  }

  dimension_group: invoice {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: TO_DATE(${TABLE}.INV_DATE_WID,'YYYYMMDD') ;;
  }

  dimension: rolling_12_months {
    type: yesno
    sql: ADD_MONTHS(TO_DATE(${TABLE}.INV_DATE_WID,'YYYYMMDD'), 12) > SYSDATE;;
  }

  dimension: org_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: paid_chgbk_amt {
    type: number
    label: "Paid Chargeback"
    sql: ${TABLE}.PAID_CHGBK_AMT ;;
  }

  dimension: paid_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.PAID_DATE_WID ;;
  }

  dimension: parent_distr_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.PARENT_DISTR_WID ;;
  }

  dimension: pg_commit_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.PG_COMMIT_WID ;;
  }

  dimension: pg_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: price_condition_code1 {
    type: string
    sql: ${TABLE}.PRC_CONDITION_CODE1 ;;
  }

  dimension: price_condition_code2 {
    type: string
    sql: ${TABLE}.PRC_CONDITION_CODE2 ;;
  }

  dimension: process_date_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.PROCESS_DATE_WID ;;
  }

  dimension: product_wid {
    type: number
    #hidden:  yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension_group: received {
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
    sql: ${TABLE}.RECEIVED_DATE ;;
  }

  dimension: reversal_status {
    type: string
    hidden:  yes
    sql: ${TABLE}.REVERSAL_STATUS ;;
  }

  dimension: reversal_status_name {
    type: string
    sql: ${TABLE}.REVERSAL_STATUS_NAME ;;
  }

  dimension: sale_currency {
    type: string
    sql: ${TABLE}.SALE_CURR ;;
  }

  dimension: ship_to_customer_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.SHIP_TO_CUSTOMER_WID ;;
  }

  dimension: sold_to_customer_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.SOLD_TO_CUSTOMER_WID ;;
  }

  dimension_group: src_model {
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
    sql: ${TABLE}.SRC_MODEL_DATE ;;
  }

  dimension: src_sys_commit_id {
    type: number
    hidden:  yes
    sql: ${TABLE}.SRC_SYS_COMMIT_ID ;;
  }

  dimension_group: submission_close {
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
    sql: ${TABLE}.SUB_CLOSE_DATE ;;
  }

  dimension: submission_number {
    type: string
    sql: ${TABLE}.SUBMISSION_NUM ;;
  }

  dimension: tier_idx {
    type: number
    label: "Price Tier"
    sql: ${TABLE}.TIER_IDX ;;
  }

  dimension: total_appr_rebate {
    type: string
    label: "Total Approved Rebate"
    sql: ${TABLE}.TOTAL_APPR_REBATE ;;
  }

  dimension: total_chgbk_amt {
    type: number
    label: "Total Chargeback"
    sql: ${TABLE}.TOTAL_CHGBK_AMT ;;
  }

  dimension: total_discrepancy_amt {
    type: number
    label: "Total Discrepancy"
    sql: ${TABLE}.TOTAL_DISCREPANCY_AMT ;;
  }

  dimension: total_distr_cost_amt {
    type: number
    label: "Total Distributor Cost"
    sql: ${TABLE}.TOTAL_DISTR_COST_AMT ;;
  }

  dimension: total_rebate {
    type: number
    label: "Total Line_Rebate"
    sql: ${TABLE}.TOTAL_RBT_AMT ;;
  }

  filter: date_frame_selection {
    label: "Period Timeframe Selection"
    default_value: "Quarter"
    suggestions: ["Month", "Quarter", "Year"]
  }

  dimension: date_period {
    type:  string
    sql:
    CASE
      WHEN {% condition date_frame_selection %} 'Year' {% endcondition %} THEN TO_CHAR(TO_DATE(${inv_date_wid},'YYYYMMDD'),'YYYY')
      WHEN {% condition date_frame_selection %} 'Quarter' {% endcondition %} THEN TO_CHAR(TO_DATE(${inv_date_wid},'YYYYMMDD'),'YYYY')||'-Q'||TO_CHAR(TO_DATE(${inv_date_wid},'YYYYMMDD'),'Q')
      ELSE TO_CHAR(TO_DATE(${inv_date_wid},'YYYYMMDD'),'YYYY-MM')
    END ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: rebate {
    type: sum
    sql: ${total_rebate} ;;
    label: "Rebates"
    value_format: "[>=10000000]0,,\"M\";[>=10000]0,\"K\";0"
    drill_fields: [detail*]
  }

  measure: volume {
    type: sum
    sql: ${inv_qty} ;;
    label: "Volume"
    value_format: "[>=10000000]0,,\"M\";[>=10000]0,\"K\";0"
    drill_fields: [detail*]
  }

  measure: list_revenue {
    type: sum
    sql: ${line_list_revenue} ;;
    label: "List Price Revenue"
    value_format: "[>=10000000]0,,\"M\";[>=10000]0,\"K\";0"
    drill_fields: [detail*]
  }

   measure: revenue {
    type: sum
    sql: ${inv_revenue} ;;
    label: "Revenue"
    value_format: "[>=10000000]0,,\"M\";[>=10000]0,\"K\";0"
    drill_fields: [detail*]
  }

  measure: unit_rebate {
    sql: ${rebate}/NULLIF(${volume},0) ;;
    label: "Rebate per Unit"
    type:  number
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: oninvoice_rebate_percent {
    sql:  (${list_revenue} - ${revenue} )/NULLIF(${list_revenue},0) ;;
    type:  number
    label: "OnInvoice Discount Percent"
    value_format_name: percent_0
    drill_fields: [detail*]
  }

  measure: net_rebate_percent {
    sql:   1 - (${list_revenue} - ${rebate})/NULLIF(${list_revenue},0) ;;
    type:  number
    label: "Net Discount Percent"
    value_format_name: percent_0
    drill_fields: [detail*]
  }

  measure: total_rebate_percent {
    sql:   (${list_revenue} - ${revenue} + ${rebate})/NULLIF(${list_revenue},0) ;;
    type:  number
    label: "Total Discount Percent"
    value_format_name: percent_0
    drill_fields: [detail*]
  }

  measure: net_price {
    sql:  (${revenue} - ${rebate})/NULLIF(${volume},0) ;;
    type:  number
    label: "Average Price Net of Rebates"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: price {
    sql:  ${revenue}/NULLIF(${volume},0) ;;
    type:  number
    label: "Average Price"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: inv_qty_year1 {
    type: sum
    label: "Invoice Quantity Prior Year"
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(SYSDATE,-12),'YYYY'), ${TABLE}.INV_QTY, 0) ;;
  }

  measure: inv_revenue_year1 {
    type: sum
    label: "Invoice Revenue Prior Year"
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(SYSDATE,-12),'YYYY'),${inv_qty} * ${inv_amt}, 0) ;;
  }

  measure: inv_qty_year2 {
    type: sum
    label: "Invoice Quantity Prior Year 2"
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(SYSDATE,-24),'YYYY'), ${TABLE}.INV_QTY, 0) ;;
  }

  measure: inv_revenue_year3 {
    type: sum
    label: "Invoice Revenue Prior Year 2"
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(SYSDATE,-36),'YYYY'),${inv_qty} * ${inv_amt}, 0) ;;
  }

  measure: inv_qty_year3 {
    type: sum
    label: "Invoice Quantity Prior Year 2"
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(SYSDATE,-36),'YYYY'), ${TABLE}.INV_QTY, 0) ;;
  }

  measure: inv_revenue_year2 {
    type: sum
    label: "Invoice Revenue Prior Year 2"
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(SYSDATE,-24),'YYYY'),${inv_qty} * ${inv_amt}, 0) ;;
  }

  measure: inv_qty_ytd_year {
    type: sum
    label: "Invoice Quantity YTD"
    sql: CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= TRUNC(SYSDATE,'YYYY') THEN ${TABLE}.INV_QTY ELSE  0 END ;;
  }

  measure: inv_revenue_ytd_year {
    type: sum
    label: "Invoice Revenue YTD"
    sql:  CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= TRUNC(SYSDATE,'YYYY') THEN ${inv_qty} * ${inv_amt} ELSE  0 END ;;
  }

  measure: inv_qty_prior_ytd_year {
    type: sum
    label: "Invoice Quantity Prior YTD"
    sql: CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(SYSDATE,-12)
      AND TO_DATE(${inv_date_wid},'YYYYMMDD') < TRUNC(SYSDATE,'YYYY') THEN ${TABLE}.INV_QTY ELSE  0 END ;;
  }

  measure: inv_revenue_prior_ytd_year {
    type: sum
    label: "Invoice Revenue Prior YTD"
    sql:  CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(SYSDATE,-12)
      AND TO_DATE(${inv_date_wid},'YYYYMMDD') < TRUNC(SYSDATE,'YYYY') THEN ${inv_qty} * ${inv_amt} ELSE  0 END ;;
  }

  measure: invoice_revenue {
    type: sum
    label: "Total Invoice Revenue"
    sql: ${inv_qty} * ${inv_amt} ;;
  }

  measure: invoice_quantity {
    type: sum
    label: "Total Invoice Quantity"
    sql: ${inv_qty};;
  }

  measure: paid_chargeback_amount {
    type: sum
    label: "Total Paid Chargeback Amount"
    sql: ${paid_chgbk_amt};;
  }

  measure: total_chargeback_amount {
    type: sum
    label: "Total Chargeback Amount"
    sql: ${total_chgbk_amt};;
  }

  measure: total_ext_contract_amount {
    type: sum
    label: "Total External Contract Amount"
    sql: ${external_contract_amt} * ${external_contract_qty}  ;;
  }
  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      line_ref_num,
      lifecycle_status_name,
      reversal_status_name,
      line_severity_name
    ]
  }

  set: custom_measure_set1  {
    fields: [  rebate,volume,list_revenue ,revenue ,unit_rebate ,oninvoice_rebate_percent , net_rebate_percent,
              total_rebate_percent, net_price, price , inv_qty_year1 , inv_revenue_year1 , inv_qty_year2 ,
              inv_revenue_year3 ,  inv_qty_year3 , inv_revenue_year2 , inv_qty_ytd_year , inv_revenue_ytd_year ,
              inv_qty_prior_ytd_year , inv_revenue_prior_ytd_year
            ]
  }

}
