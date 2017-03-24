view: mn_cmpl_period_fact {
  sql_table_name: LSETLDM.MN_CMPL_PERIOD_FACT ;;

  dimension: actual_amt_to_date {
    type: string
    sql: ${TABLE}.ACTUAL_AMT_TO_DATE ;;
  }

  dimension: actual_amt_to_date_base {
    type: string
    sql: ${TABLE}.ACTUAL_AMT_TO_DATE_BASE ;;
  }

  dimension: attained_tier {
    type: string
    sql: ${TABLE}.ATTAINED_TIER ;;
  }

  dimension: cmpl_threshold {
    type: string
    sql: ${TABLE}.CMPL_THRESHOLD ;;
  }

  dimension: commit_tier {
    type: string
    sql: ${TABLE}.COMMIT_TIER ;;
  }

  dimension: commit_ver_num {
    type: string
    sql: ${TABLE}.COMMIT_VER_NUM ;;
  }

  dimension: contract_wid {
    type: string
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: customer_wid {
    type: string
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension_group: date_created {
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
    type: string
    sql: ${TABLE}.DATE_RETIRED_WID ;;
  }

  dimension_group: date_updated {
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

  dimension: definition_wid {
    type: string
    sql: ${TABLE}.DEFINITION_WID ;;
  }

  dimension: equiv_rev_value {
    type: string
    sql: ${TABLE}.EQUIV_REV_VALUE ;;
  }

  dimension: equiv_rev_value_base {
    type: string
    sql: ${TABLE}.EQUIV_REV_VALUE_BASE ;;
  }

  dimension: equiv_value {
    type: string
    sql: ${TABLE}.EQUIV_VALUE ;;
  }

  dimension: exchange_rate {
    type: string
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: expected_amt_to_date {
    type: string
    sql: ${TABLE}.EXPECTED_AMT_TO_DATE ;;
  }

  dimension: expected_amt_to_date_base {
    type: string
    sql: ${TABLE}.EXPECTED_AMT_TO_DATE_BASE ;;
  }

  dimension: hidden_flag {
    type: string
    sql: ${TABLE}.HIDDEN_FLAG ;;
  }

  dimension: org_wid {
    type: string
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension_group: over_tier_chg {
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
    type: string
    sql: ${TABLE}.PCT_REV_CMPL ;;
  }

  dimension: pct_vol_cmpl {
    type: string
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
    type: string
    sql: ${TABLE}.PERIOD_END_DATE_WID ;;
  }

  dimension: period_num {
    type: string
    sql: ${TABLE}.PERIOD_NUM ;;
  }

  dimension: period_pkg_wid {
    type: string
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
    type: string
    sql: ${TABLE}.PERIOD_START_DATE_WID ;;
  }

  dimension: period_status {
    type: string
    sql: ${TABLE}.PERIOD_STATUS ;;
  }

  dimension: period_wid {
    type: string
    sql: ${TABLE}.PERIOD_WID ;;
  }

  dimension: pg_wid {
    type: string
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: prd_cmtmnt_created_by_id {
    type: string
    sql: ${TABLE}.PRD_CMTMNT_CREATED_BY_ID ;;
  }

  dimension: prd_cmtmnt_created_by_wid {
    type: string
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
    type: string
    sql: ${TABLE}.PRD_CMTMNT_DT_CREATED_WID ;;
  }

  dimension: prd_cmtmnt_dt_updated_wid {
    type: string
    sql: ${TABLE}.PRD_CMTMNT_DT_UPDATED_WID ;;
  }

  dimension: prd_cmtmnt_revenue {
    type: string
    sql: ${TABLE}.PRD_CMTMNT_REVENUE ;;
  }

  dimension: prd_cmtmnt_revenue_base {
    type: string
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
    type: string
    sql: ${TABLE}.PRD_CMTMNT_TIER_ATTAINED ;;
  }

  dimension: prd_cmtmnt_updated_by_id {
    type: string
    sql: ${TABLE}.PRD_CMTMNT_UPDATED_BY_ID ;;
  }

  dimension: prd_cmtmnt_updated_by_wid {
    type: string
    sql: ${TABLE}.PRD_CMTMNT_UPDATED_BY_WID ;;
  }

  dimension: prior_period_wid {
    type: string
    sql: ${TABLE}.PRIOR_PERIOD_WID ;;
  }

  dimension: product_cat_wid {
    type: string
    sql: ${TABLE}.PRODUCT_CAT_WID ;;
  }

  dimension: program_based_flag {
    type: string
    sql: ${TABLE}.PROGRAM_BASED_FLAG ;;
  }

  dimension: proj_rev_at_risk {
    type: string
    sql: ${TABLE}.PROJ_REV_AT_RISK ;;
  }

  dimension: proj_rev_at_risk_base {
    type: string
    sql: ${TABLE}.PROJ_REV_AT_RISK_BASE ;;
  }

  dimension: projected_tier {
    type: string
    sql: ${TABLE}.PROJECTED_TIER ;;
  }

  dimension: review_status {
    type: string
    sql: ${TABLE}.REVIEW_STATUS ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
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
    type: string
    sql: ${TABLE}.SRC_SYS_COMMIT_ID ;;
  }

  dimension: src_sys_mgr_id {
    type: string
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_period_cmtmnt_id {
    type: string
    sql: ${TABLE}.SRC_SYS_PERIOD_CMTMNT_ID ;;
  }

  dimension: src_sys_period_id {
    type: string
    sql: ${TABLE}.SRC_SYS_PERIOD_ID ;;
  }

  dimension: strategy_based_flag {
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension_group: sugg_tier_chg {
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
    sql: ${TABLE}.TIER_REASON_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
