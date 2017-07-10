view: mn_cmpl_period_fact {
  sql_table_name: MN_CMPL_PERIOD_FACT_VW ;;


  dimension: actual_amt_to_date {
    type: number
    sql: NVL(${TABLE}.ACTUAL_AMT_TO_DATE,0) ;;
  }

  dimension: actual_amt_to_date_base {
    type: number
    sql: ${TABLE}.ACTUAL_AMT_TO_DATE_BASE ;;
  }

  dimension: attained_tier {
    type: number
    label: "Period Attained Tier"
    sql: ${TABLE}.ATTAINED_TIER ;;
  }

  dimension: cmpl_threshold {
    type: string
    label: "Period Compliance Threshold (%)"
    sql: ${TABLE}.CMPL_THRESHOLD * 100 ;;
  }

  dimension: commit_tier {
    type: number
    label: "Period Committed Tier"
    sql: ${TABLE}.COMMIT_TIER ;;
  }

  dimension: commit_ver_num {
    type: number
    sql: ${TABLE}.COMMIT_VER_NUM ;;
    hidden: yes
  }

  dimension: contract_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

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

  dimension_group: date_retired {
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
    sql: ${TABLE}.DATE_RETIRED ;;
  }

  dimension: date_retired_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.DATE_RETIRED_WID ;;
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

  dimension: definition_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.DEFINITION_WID ;;
  }

  dimension: equiv_rev_value {
    type: number
    sql: ${TABLE}.EQUIV_REV_VALUE ;;
  }

  dimension: equiv_rev_value_base {
    type: number
    sql: ${TABLE}.EQUIV_REV_VALUE_BASE ;;
  }

  dimension: equiv_value {
    type: number
    sql: ${TABLE}.EQUIV_VALUE ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: expected_amt_to_date {
    type: number
    sql: NVL(${TABLE}.EXPECTED_AMT_TO_DATE,0) ;;
  }

  dimension: expected_amt_to_date_base {
    type: number
    sql: ${TABLE}.EXPECTED_AMT_TO_DATE_BASE ;;
  }

  dimension: hidden_flag {
    type: string
    sql: ${TABLE}.HIDDEN_FLAG ;;
  }

  dimension: org_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension_group: override_tier_change {
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
    sql: ${TABLE}.OVER_TIER_CHG_DATE ;;
  }

  dimension: pct_rev_cmpl {
    type: number
    sql: ${TABLE}.PCT_REV_CMPL ;;
  }

  dimension: pct_vol_cmpl {
    type: number
    sql: ${TABLE}.PCT_VOL_CMPL ;;
  }

  dimension_group: period_end {
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
    sql: ${TABLE}.PERIOD_END_DATE ;;
  }

  dimension: period_end_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_END_DATE_WID ;;
  }

  dimension: period_num {
    type: string
    label: "Compliance Period Number"
    sql: ${TABLE}.PERIOD_NUM ;;
  }

  dimension: period_pkg_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_PKG_WID ;;
  }

  dimension_group: period_start {
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
    sql: ${TABLE}.PERIOD_START_DATE ;;
  }

  dimension: period_start_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_START_DATE_WID ;;
  }

  dimension: period_status {
    type: string
    label: "Period Status"
    sql: ${TABLE}.PERIOD_STATUS ;;
  }

  dimension: period_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.PERIOD_WID ;;
  }

  dimension: pg_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: prd_cmtmnt_created_by_id {
    type: number
    sql: ${TABLE}.PRD_CMTMNT_CREATED_BY_ID ;;
  }

  dimension: prd_cmtmnt_created_by_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRD_CMTMNT_CREATED_BY_WID ;;
  }

  dimension_group: prd_cmtmnt_date_created {
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
    sql: ${TABLE}.PRD_CMTMNT_DATE_CREATED ;;
  }

  dimension_group: prd_cmtmnt_date_updated {
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
    sql: ${TABLE}.PRD_CMTMNT_DATE_UPDATED ;;
  }

  dimension: prd_cmtmnt_dt_created_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PRD_CMTMNT_DT_CREATED_WID ;;
  }

  dimension: prd_cmtmnt_dt_updated_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PRD_CMTMNT_DT_UPDATED_WID ;;
  }

  dimension: prd_cmtmnt_revenue {
    type: number
    sql: ${TABLE}.PRD_CMTMNT_REVENUE ;;
  }

  dimension: prd_cmtmnt_revenue_base {
    type: number
    sql: ${TABLE}.PRD_CMTMNT_REVENUE_BASE ;;
  }

  dimension: prd_cmtmnt_revenue_curr {
    type: string
    sql: ${TABLE}.PRD_CMTMNT_REVENUE_CURR ;;
  }

  dimension: prd_cmtmnt_review_status {
    type: string
    sql: ${TABLE}.PRD_CMTMNT_REVIEW_STATUS ;;
  }

  dimension: prd_cmtmnt_tier_attained {
    type: number
    sql: ${TABLE}.PRD_CMTMNT_TIER_ATTAINED ;;
  }

  dimension: prd_cmtmnt_updated_by_id {
    type: number
    hidden: yes
    sql: ${TABLE}.PRD_CMTMNT_UPDATED_BY_ID ;;
  }

  dimension: prd_cmtmnt_updated_by_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRD_CMTMNT_UPDATED_BY_WID ;;
  }

  dimension: prior_period_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRIOR_PERIOD_WID ;;
  }

  dimension: product_cat_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_CAT_WID ;;
  }

  dimension: program_based_flag {
    type: string
    sql: ${TABLE}.PROGRAM_BASED_FLAG ;;
  }

  dimension: proj_rev_at_risk {
    type: number
    sql: ${TABLE}.PROJ_REV_AT_RISK ;;
  }

  dimension: proj_rev_at_risk_base {
    type: number
    sql: ${TABLE}.PROJ_REV_AT_RISK_BASE ;;
  }

  dimension: projected_tier {
    type: number
    sql: ${TABLE}.PROJECTED_TIER ;;
  }

  dimension: review_status {
    type: string
    label: "Period Review Status"
    sql: ${TABLE}.REVIEW_STATUS ;;
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

  dimension_group: src_ready {
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
    sql: ${TABLE}.SRC_READY_DATE ;;
  }

  dimension: src_sys_commit_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_COMMIT_ID ;;
  }

  dimension: src_sys_mgr_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_period_cmtmnt_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PERIOD_CMTMNT_ID ;;
  }

  dimension: src_sys_period_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_PERIOD_ID ;;
  }

  dimension: strategy_based_flag {
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension_group: suggested_tier_change {
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
    sql: ${TABLE}.SUGG_TIER_CHG_DATE ;;
  }

  dimension: tier_change_type {
    type: string
    label: "Period Tier Change Type"
    sql: ${TABLE}.TIER_CHANGE_TYPE ;;
  }

  dimension: tier_min_value {
    type: string
    sql: ${TABLE}.TIER_MIN_VALUE ;;
  }

  dimension: tier_override {
    type: string
    sql: ${TABLE}.TIER_OVERRIDE ;;
  }

  dimension: tier_reason_code {
    type: string
    label: "Period Tier Override Reason"
    sql: ${TABLE}.TIER_REASON_CODE ;;
  }

  dimension: total_days_in_period {
    sql:  ROUND(TRUNC(LEAST(CAST(${period_end_raw} AS DATE), SYSDATE),'DD') - TRUNC(LEAST(CAST(${period_start_raw} AS DATE), SYSDATE),'DD') +1) ;;
  }

  measure: cmpl_period_count {
    type: count
    drill_fields: []
  }

  measure: actual_sales {
  type: sum
  value_format_name: decimal_0
  sql: ${actual_amt_to_date} ;;
  }
  measure: expected_sales {
    type: sum
    value_format_name: decimal_0
    sql: ${expected_amt_to_date} ;;
  }

  measure: review_status_total {
    type: number
    drill_fields: []
    hidden: yes
    sql: COUNT(${TABLE}.REVIEW_STATUS) ;;

  }

  measure: review_status_compliant {
    type: number
    drill_fields: []
    group_label: "Compliance Ratio"
    value_format_name: percent_2
    #view_label: "Compliance Ratio - Compliant"
    sql: SUM(CASE WHEN  ${TABLE}.REVIEW_STATUS = 'Compliant' THEN 1 ELSE 0 END) / NULLIF(${review_status_total}, 0) ;;
  }

  measure: review_status_out_of_compliance {
    type: number
    drill_fields: []
    group_label: "Compliance Ratio"
    value_format_name: percent_2
    #view_label: "Compliance Ratio - Out of Compliance"
    sql: SUM(CASE WHEN  ${TABLE}.REVIEW_STATUS = 'Out of Compliance' THEN 1 ELSE 0 END) / NULLIF(${review_status_total}, 0) ;;
  }

  measure: review_status_over_compliant {
    type: number
    drill_fields: []
    group_label: "Compliance Ratio"
    value_format_name: percent_2
    #view_label: "Compliance Ratio - Over Compliant"
    sql: SUM(CASE WHEN  ${TABLE}.REVIEW_STATUS = 'Over Compliant' THEN 1 ELSE 0 END) / NULLIF(${review_status_total}, 0) ;;
  }



}
