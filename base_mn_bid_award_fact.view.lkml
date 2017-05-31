view: mn_bid_award_fact {
  sql_table_name: MN_BID_AWARD_FACT ;;

  dimension: bid_award_desc {
    type: string
    sql: ${TABLE}.BID_AWARD_DESC ;;
  }

  dimension: bid_award_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.BID_AWARD_WID ;;
  }

  dimension: contract_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: customer_wid {
    hidden: yes
    type: string
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

  dimension: deleted_flag {
    type: string
    sql: ${TABLE}.DELETED_FLAG ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: gen_name {
    type: string
    sql: ${TABLE}.GEN_NAME ;;
  }

  dimension: mcc_status {
    type: string
    sql: ${TABLE}.MCC_STATUS ;;
  }

  dimension: pg_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: price_type {
    type: string
    sql: ${TABLE}.PRICE_TYPE ;;
  }

  dimension: ref_num {
    type: string
    sql: ${TABLE}.REF_NUM ;;
  }

  dimension_group: run {
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
    sql: ${TABLE}.RUN_DATE ;;
  }

  dimension: run_id {
    hidden: yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_ba_int_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_BA_INT_ID ;;
  }

  dimension_group: src_sys_date_updated {
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

  dimension_group: start {
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
    sql: ${TABLE}.START_DATE ;;
  }

  dimension_group: term {
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
    sql: ${TABLE}.TERM_DATE ;;
  }

  dimension: tier_index {
    type: string
    sql: ${TABLE}.TIER_INDEX ;;
  }

  measure: count {
    type: count
    drill_fields: [gen_name]
  }
}
