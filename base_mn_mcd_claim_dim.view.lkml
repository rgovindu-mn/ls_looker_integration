view: mn_mcd_claim_dim {

sql_table_name: MN_MCD_CLAIM_DIM_VW ;;


  dimension_group: claim_created_date {
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
    sql: ${TABLE}.CLAIM_CREATED_DATE ;;
  }

  dimension: claim_created_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CLAIM_CREATED_DATE_WID ;;
  }

  dimension: claim_num {
    type: string
    sql: ${TABLE}.CLAIM_NUM ;;
  }

  dimension: claim_owner_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CLAIM_OWNER_WID ;;
  }

  dimension: claim_status {
    type: string
    sql: ${TABLE}.CLAIM_STATUS ;;
  }

  dimension: claim_type {
    type: string
    sql: ${TABLE}.CLAIM_TYPE ;;
  }

  dimension: claim_wid {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.CLAIM_WID ;;
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

  dimension_group: due_date {
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
    sql: ${TABLE}.DUE_DATE ;;
  }

  dimension: due_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.DUE_DATE_WID ;;
  }

  dimension_group: invoice_date {
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
    sql: ${TABLE}.INVOICE_DATE ;;
  }

  dimension: labeler {
    type: string
    sql: ${TABLE}.LABELER ;;
  }

  dimension_group: original_qtr {
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
    sql: ${TABLE}.ORIGINAL_QTR ;;
  }

  dimension: original_qtr_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ORIGINAL_QTR_DATE_WID ;;
  }

  dimension: original_qtr_str {
    type: string
    sql: ${TABLE}.ORIGINAL_QTR_STR ;;
  }

  dimension_group: postmark_date {
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
    sql: ${TABLE}.POSTMARK_DATE ;;
  }

  dimension: program_wid {
    type: number
    hidden : yes
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: rebate_due_amt {
    type: number
    sql: ${TABLE}.REBATE_DUE_AMT ;;
  }

  dimension: rebate_due_amt_base {
    type: number
    sql: ${TABLE}.REBATE_DUE_AMT_BASE ;;
  }

  dimension: rebate_due_amt_curr {
    type: string
    sql: ${TABLE}.REBATE_DUE_AMT_CURR ;;
  }

  dimension_group: receipt_date {
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
    sql: ${TABLE}.RECEIPT_DATE ;;
  }

  dimension: rev_num {
    type: number
    sql: ${TABLE}.REV_NUM ;;
  }

  dimension: row_deleted_flag {
    type: string
    sql: ${TABLE}.ROW_DELETED_FLAG ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: spap_qualified {
    type: string
    sql: ${TABLE}.SPAP_QUALIFIED ;;
  }

  dimension: src_sys_claim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CLAIM_ID ;;
  }

  dimension: src_sys_mgr_id {
    type: number
    hidden:yes
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_pk_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PK_ID ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      claim_created_date_time,
      claim_created_date_wid,
      claim_num,
      claim_owner_wid,
      claim_status,
      claim_type,
      claim_wid,
      date_created_time,
      date_updated_time,
      due_date_time,
      due_date_wid,
      invoice_date_time,
      labeler,
      original_qtr_time,
      original_qtr_date_wid,
      original_qtr_str,
      postmark_date_time,
      program_wid,
      rebate_due_amt,
      rebate_due_amt_base,
      rebate_due_amt_curr,
      receipt_date_time,
      rev_num,
      row_deleted_flag,
      run_id,
      source_system_id,
      spap_qualified,
      src_sys_claim_id,
      src_sys_mgr_id,
      src_sys_pk_id,
      state
    ]
  }
}
