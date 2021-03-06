view: mn_mco_submission_dim {

  sql_table_name: MN_MCO_SUBMISSION_DIM_VW ;;

  dimension: adjusted_by_user_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ADJUSTED_BY_USER_WID ;;
  }

  dimension_group: adjusted {
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
    sql: ${TABLE}.ADJUSTED_DATE ;;
  }

  dimension: adjustment_status_name {
    type: string
    sql: ${TABLE}.ADJUSTMENT_STATUS_NAME ;;
  }

  dimension: analyst_user_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ANALYST_USER_WID ;;
  }

  dimension: claim_name {
    type: string
    sql: ${TABLE}.CLAIM_NAME ;;
  }

  dimension: claim_number {
    type: string
    sql: ${TABLE}.CLAIM_NUMBER ;;
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

  dimension_group: due {
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
    sql:  to_date(${TABLE}.DUE_DATE_WID,'yyyymmdd') ;;
  }

  dimension: effective_timezone {
    type: string
    label: "Time Zone"
    sql: ${TABLE}.EFFECTIVE_TIMEZONE ;;
  }

  dimension: file_format {
    type: string
    sql: ${TABLE}.FILE_FORMAT ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.FILE_NAME ;;
  }

  dimension: mco_submission_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.MCO_SUBMISSION_WID ;;
  }

  dimension: org_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension_group: paid {
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
    sql:  to_date(${TABLE}.PAID_DATE_WID,'yyyymmdd') ;;
  }

  dimension: pbm_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PBM_WID ;;
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
    sql:  to_date(${TABLE}.PERIOD_END_DATE_WID,'yyyymmdd') ;;
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
    sql:  to_date(${TABLE}.PERIOD_START_DATE_WID,'yyyymmdd') ;;
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

  dimension: src_sys_claim_id {
    type: string
    sql: ${TABLE}.SRC_SYS_CLAIM_ID ;;
    label: "Source System Claim ID"
  }

  dimension_group: src_sys_date_updated {
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
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension: src_sys_submission_id {
    type: string
    sql: ${TABLE}.SRC_SYS_SUBMISSION_ID ;;
    label: "Source System Submission ID"
  }

  dimension: status_name {
    type: string
    sql: ${TABLE}.STATUS_NAME ;;
  }

  dimension: submission_comments {
    type: string
    sql: ${TABLE}.SUBMISSION_COMMENTS ;;
  }

  dimension: submission_name {
    type: string
    sql: ${TABLE}.SUBMISSION_NAME ;;
  }

  dimension: submission_number {
    type: string
    sql: ${TABLE}.SUBMISSION_NUMBER ;;
  }

  dimension: uploaded_by_user_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.UPLOADED_BY_USER_WID ;;
  }

  dimension_group: uploaded {
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
    sql: ${TABLE}.UPLOADED_DATE ;;
  }

  dimension: util_type_name {
    type: string
    sql: ${TABLE}.UTIL_TYPE_NAME ;;
    label: "Utilization Type Name"
  }

  measure: count {
    type: count
    drill_fields: [submission_name,submission_number,claim_name,claim_number,period_start_date,period_end_date,mn_util_pbm_dim.pbm_name]
  }
}
