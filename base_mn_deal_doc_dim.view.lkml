view: mn_deal_doc_dim {
  sql_table_name: MN_DEAL_DOC_DIM_VW ;;

  dimension: customer_wid {
    hidden: yes
    type: number

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

  dimension_group: deal_doc_end {
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
    sql: ${TABLE}.DEAL_DOC_END_DATE ;;
  }

  dimension: deal_doc_id_num {
    type: string
    sql: ${TABLE}.DEAL_DOC_ID_NUM ;;
  }

  dimension: deal_doc_id_num_prefix {
    type: string
    sql: ${TABLE}.DEAL_DOC_ID_NUM_PREFIX ;;
  }

  dimension: deal_doc_id_num_version {
    type: string
    sql: ${TABLE}.DEAL_DOC_ID_NUM_VERSION ;;
  }

  dimension: deal_doc_name {
    type: string
    sql: ${TABLE}.DEAL_DOC_NAME ;;
  }

  dimension_group: deal_doc_start {
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
    sql: ${TABLE}.DEAL_DOC_START_DATE ;;
  }

  dimension: deal_doc_status {
    type: string
    sql: ${TABLE}.DEAL_DOC_STATUS ;;
  }

  dimension: deal_doc_type {
    type: string
    sql: ${TABLE}.DEAL_DOC_TYPE ;;
  }

  dimension: deal_doc_version {
    type: string
    sql: ${TABLE}.DEAL_DOC_VERSION ;;
  }

  dimension: deal_doc_wid {
    hidden: yes
    primary_key: yes
    type: number

    sql: ${TABLE}.DEAL_DOC_WID ;;
  }

  dimension: end_ver_num {
    type: string
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: pg_end_ver_num {
    type: string
    sql: ${TABLE}.PG_END_VER_NUM ;;
  }

  dimension_group: pg_ver_end {
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
    sql: ${TABLE}.PG_VER_END_DATE ;;
  }

  dimension: pg_ver_num {
    type: string
    sql: ${TABLE}.PG_VER_NUM ;;
  }

  dimension_group: pg_ver_start {
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
    sql: ${TABLE}.PG_VER_START_DATE ;;
  }

  dimension: pricing_method_code {
    type: string
    sql: ${TABLE}.PRICING_METHOD_CODE ;;
  }

  dimension: pricing_method_name {
    type: string
    sql: ${TABLE}.PRICING_METHOD_NAME ;;
  }

  dimension: product_group_name {
    type: string
    sql: ${TABLE}.PRODUCT_GROUP_NAME ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_deal_doc_id {
    type: string
    sql: ${TABLE}.SRC_SYS_DEAL_DOC_ID ;;
  }

  dimension: src_sys_pg_id {
    type: string
    sql: ${TABLE}.SRC_SYS_PG_ID ;;
  }

  dimension: tier_idx {
    type: string
    sql: ${TABLE}.TIER_IDX ;;
  }

  dimension: time_frame {
    type: string
    sql: ${TABLE}.TIME_FRAME ;;
  }

  dimension: time_frame_desc {
    type: string
    sql: ${TABLE}.TIME_FRAME_DESC ;;
  }

  dimension_group: ver_end {
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
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: ver_num {
    type: string
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension_group: ver_start {
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
    sql: ${TABLE}.VER_START_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: [product_group_name, pricing_method_name, deal_doc_name]
  }
}
