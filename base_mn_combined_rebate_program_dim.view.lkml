view: mn_combined_rebate_program_dim {
  derived_table: {
    sql:SELECT
        RP.ACCRUAL_RATE,
        RP.ACCRUAL_TYPE_WID,
        NULL AS ACCRU_CUST_WID,
        RP.BENEFIT_CALC_RULE,
        RP.CALC_LEVEL,
        RP.CONTRACT_TYPE,
        RP.CONTRACT_TYPE_WID,
        NULL AS CUSTOMER_WID,
        RP.DATE_CREATED,
        RP.DATE_UPDATED,
        RP.DOC_TZ_EFF_END_DATE,
        RP.DOC_TZ_EFF_START_DATE,
        RP.EFFECTIVE_TIMEZONE,
        RP.EFF_END_DATE,
        RP.EFF_START_DATE,
        RP.END_VER_NUM,
        RP.FLAT_PROGRAM,
        RP.GRP_NAME,
        RP.LATEST_FLAG,
        RP.LATE_DATE_LAG,
        NULL AS MARKET_BASKET_TYPE,
        RP.NON_STD_PROGRAM,
        RP.NOTES,
        RP.NUM_TIERS,
        RP.ORDER_IDX,
        RP.ORG_WID,
        RP.PAYEE_CUSTOMER_WID,
        RP.PAYMENT_CUST_TYPE,
        RP.PAYMENT_FREQ,
        RP.PAYMENT_GRACE_FREQ,
        RP.PAYMENT_LEVEL,
        RP.PMT_METHOD_WID,
        RP.PMT_TYPE_WID,
        RP.PROCESSING_DATE_LAG,
        RP.PROGRAM_NAME,
        RP.PROGRAM_SUB_TYPE,
        RP.PROGRAM_SUB_TYPE_NAME,
        RP.PROGRAM_TYPE_WID,
        RP.PROGRAM_WID,
        NULL AS QUAL_METHOD,
        NULL AS RBT_STRATEGY_RPT_WID,
        RP.RUN_ID,
        NULL AS RX_NORM_METHOD,
        RP.SALE_LINE_FROM,
        RP.SALE_LINE_TYPE,
        RP.SCHEDULE_BASIS,
        RP.SOURCE_SYSTEM_ID,
        NULL AS SPREADSHEET_END_DATE,
        NULL AS SPREADSHEET_NAME,
        NULL AS SPREADSHEET_START_DATE,
        NULL AS SPREADSHEET_TYPE,
        RP.SRC_STRATEGY_NAME,
        RP.SRC_STRATEGY_NUM,
        RP.SRC_STRATEGY_TYPE,
        RP.SRC_STRATEGY_VER_NUM,
        RP.SRC_SYS_CONTRACT_ID,
        NULL AS SRC_SYS_DATE_UPDATED,
        RP.SRC_SYS_MGR_ID,
        RP.SRC_SYS_PK_ID,
        RP.SRC_SYS_PROGRAM_ID,
        RP.STRATEGY_BASED_FLAG,
        RP.SYSTEM_ACCRUE,
        RP.TB_CALC_RULE,
        NULL AS TIER_MGMT_TYPE,
        NULL AS UTIL_TYPE,
        RP.VER_END_DATE,
        RP.VER_NUM,
        RP.VER_START_DATE,
        NULL AS SRC_SYS_RBT_STRATEGY_RPT_ID,
        NULL AS SRC_SYS_STRATEGY_ID,
        NULL AS STRATEGY_END_VER_NUM,
        NULL AS STRATEGY_VER_NUM,
        NULL AS TYPE,
        CF.CONTRACT_WID AS CONTRACT_WID
        FROM
        MN_REBATE_PROGRAM_DIM_VW RP
        INNER JOIN MN_CONTRACT_FACT_VW CF ON CF.PROGRAM_WID = RP.PROGRAM_WID AND CF.RECORD_TYPE = 2
        WHERE RP.STRATEGY_BASED_FLAG='N'

        UNION

        SELECT
        RPSD.ACCRUAL_RATE,
        RPSD.ACCRUAL_TYPE_WID,
        RPSD.ACCRU_CUST_WID,
        NULL,
        NULL,
        NULL,
        NULL,
        RPSD.CUSTOMER_WID,
        RPSD.DATE_CREATED,
        RPSD.DATE_UPDATED,
        NULL,
        NULL,
        NULL,
        RPSD.EFF_END_DATE,
        RPSD.EFF_START_DATE,
        NULL,
        NULL,
        NULL,
        NULL,
        RPSD.LATE_DATE_LAG,
        RPSD.MARKET_BASKET_TYPE,
        RPSD.NON_STD_PROGRAM,
        NULL,
        RPSD.NUM_TIERS,
        RPSD.ORDER_IDX,
        NULL,
        RPSD.PAYEE_CUSTOMER_WID,
        RPSD.PAYMENT_CUST_TYPE,
        NULL,
        NULL,
        RPSD.PAYMENT_LEVEL,
        RPSD.PMT_MTH_TYPE_WID,
        RPSD.PMT_TYPE_WID,
        RPSD.PROCESSING_DATE_LAG,
        RPSD.PROGRAM_NAME,
        NULL,
        NULL,
        NULL,
        RPSD.PROGRAM_WID,
        RPSD.QUAL_METHOD,
        RPSD.RBT_STRATEGY_RPT_WID,
        RPSD.RUN_ID,
        RPSD.RX_NORM_METHOD,
        RPSD.SALE_LINE_FROM,
        RPSD.SALE_LINE_TYPE,
        NULL,
        RPSD.SOURCE_SYSTEM_ID,
        RPSD.SPREADSHEET_END_DATE,
        RPSD.SPREADSHEET_NAME,
        RPSD.SPREADSHEET_START_DATE,
        RPSD.SPREADSHEET_TYPE,
        NULL,
        NULL,
        NULL,
        NULL,
        RPSD.SRC_SYS_CONTRACT_ID,
        RPSD.SRC_SYS_DATE_UPDATED,
        RPSD.SRC_SYS_MGR_ID,
        NULL,
        NULL,
        NULL,
        RPSD.SYSTEM_ACCRUE,
        NULL,
        RPSD.TIER_MGMT_TYPE,
        RPSD.UTIL_TYPE,
        RPSD.VER_END_DATE,
        NULL,
        RPSD.VER_START_DATE,
        RPSD.SRC_SYS_RBT_STRATEGY_RPT_ID,
        RPSD.SRC_SYS_STRATEGY_ID,
        RPSD.STRATEGY_END_VER_NUM,
        RPSD.STRATEGY_VER_NUM,
        RPSD.TYPE,
        CF.CONTRACT_WID AS CONTRACT_WID
        FROM
        MN_REBATE_PROGRAM_SD_RPT_VW RPSD
        LEFT JOIN MN_REBATE_PROGRAM_DIM_VW RP ON RP.PROGRAM_WID = RPSD.PROGRAM_WID
        INNER JOIN MN_CONTRACT_FACT_VW CF ON CF.PROGRAM_WID = RPSD.PROGRAM_WID AND CF.RECORD_TYPE = 2
        WHERE RP.STRATEGY_BASED_FLAG='Y'
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: accrual_rate {
    type: string
    sql: ${TABLE}.ACCRUAL_RATE ;;
  }

  dimension: accrual_type_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ACCRUAL_TYPE_WID ;;
  }

  dimension: accru_cust_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ACCRU_CUST_WID ;;
  }

  dimension: benefit_calc_rule {
    type: string
    sql: ${TABLE}.BENEFIT_CALC_RULE ;;
  }

  dimension: calc_level {
    type: string
    sql: ${TABLE}.CALC_LEVEL ;;
  }

  dimension: contract_type {
    type: string
    sql: ${TABLE}.CONTRACT_TYPE ;;
  }

  dimension: contract_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: contract_type_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_TYPE_WID ;;
  }

  dimension: customer_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension_group: date_created {
    hidden: yes
    type: time
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
    hidden: yes
    type: time
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: doc_tz_eff_end_date {
    type: date
    sql: ${TABLE}.DOC_TZ_EFF_END_DATE ;;
  }

  dimension: doc_tz_eff_start_date {
    type: date
    sql: ${TABLE}.DOC_TZ_EFF_START_DATE ;;
  }

  dimension: effective_timezone {
    type: string
    sql: ${TABLE}.EFFECTIVE_TIMEZONE ;;
  }

  dimension_group: eff_end_date {
    type: time
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension_group: eff_start_date {
    type: time
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension: end_ver_num {
    type: string
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: flat_program {
    type: string
    sql: ${TABLE}.FLAT_PROGRAM ;;
  }

  dimension: grp_name {
    type: string
    sql: ${TABLE}.GRP_NAME ;;
  }

  dimension: latest_flag {
    type: string
    sql: ${TABLE}.LATEST_FLAG ;;
  }

  dimension: late_date_lag {
    type: string
    sql: ${TABLE}.LATE_DATE_LAG ;;
  }

  dimension: market_basket_type {
    type: string
    sql: ${TABLE}.MARKET_BASKET_TYPE ;;
  }

  dimension: non_std_program {
    type: string
    sql: ${TABLE}.NON_STD_PROGRAM ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }

  dimension: num_tiers {
    type: string
    sql: ${TABLE}.NUM_TIERS ;;
  }

  dimension: order_idx {
    type: string
    sql: ${TABLE}.ORDER_IDX ;;
  }

  dimension: org_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: payee_customer_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PAYEE_CUSTOMER_WID ;;
  }

  dimension: payment_cust_type {
    type: string
    sql: ${TABLE}.PAYMENT_CUST_TYPE ;;
  }

  dimension: payment_freq {
    type: string
    sql: ${TABLE}.PAYMENT_FREQ ;;
  }

  dimension: payment_grace_freq {
    type: string
    sql: ${TABLE}.PAYMENT_GRACE_FREQ ;;
  }

  dimension: payment_level {
    type: string
    sql: ${TABLE}.PAYMENT_LEVEL ;;
  }

  dimension: pmt_method_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PMT_METHOD_WID ;;
  }

  dimension: pmt_type_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PMT_TYPE_WID ;;
  }

  dimension: processing_date_lag {
    type: string
    sql: ${TABLE}.PROCESSING_DATE_LAG ;;
  }

  dimension: program_name {
    type: string
    sql: ${TABLE}.PROGRAM_NAME ;;
  }

  dimension: program_sub_type {
    type: string
    sql: ${TABLE}.PROGRAM_SUB_TYPE ;;
  }

  dimension: program_sub_type_name {
    type: string
    sql: ${TABLE}.PROGRAM_SUB_TYPE_NAME ;;
  }

  dimension: program_type_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PROGRAM_TYPE_WID ;;
  }

  dimension: program_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: qual_method {
    type: string
    sql: ${TABLE}.QUAL_METHOD ;;
  }

  dimension: rbt_strategy_rpt_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.RBT_STRATEGY_RPT_WID ;;
  }

  dimension: run_id {
    hidden: yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: rx_norm_method {
    type: string
    sql: ${TABLE}.RX_NORM_METHOD ;;
  }

  dimension: sale_line_from {
    type: string
    sql: ${TABLE}.SALE_LINE_FROM ;;
  }

  dimension: sale_line_type {
    type: string
    sql: ${TABLE}.SALE_LINE_TYPE ;;
  }

  dimension: schedule_basis {
    type: string
    sql: ${TABLE}.SCHEDULE_BASIS ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension_group: spreadsheet_end_date {
    type: time
    sql: ${TABLE}.SPREADSHEET_END_DATE ;;
  }

  dimension: spreadsheet_name {
    type: string
    sql: ${TABLE}.SPREADSHEET_NAME ;;
  }

  dimension_group: spreadsheet_start_date {
    type: time
    sql: ${TABLE}.SPREADSHEET_START_DATE ;;
  }

  dimension: spreadsheet_type {
    type: string
    sql: ${TABLE}.SPREADSHEET_TYPE ;;
  }

  dimension: src_strategy_name {
    type: string
    sql: ${TABLE}.SRC_STRATEGY_NAME ;;
  }

  dimension: src_strategy_num {
    type: string
    sql: ${TABLE}.SRC_STRATEGY_NUM ;;
  }

  dimension: src_strategy_type {
    type: string
    sql: ${TABLE}.SRC_STRATEGY_TYPE ;;
  }

  dimension: src_strategy_ver_num {
    type: string
    sql: ${TABLE}.SRC_STRATEGY_VER_NUM ;;
  }

  dimension: src_sys_contract_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_CONTRACT_ID ;;
  }

  dimension_group: src_sys_date_updated {
    type: time
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension: src_sys_mgr_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_pk_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_PK_ID ;;
  }

  dimension: src_sys_program_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_PROGRAM_ID ;;
  }

  dimension: strategy_based_flag {
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: system_accrue {
    type: string
    sql: ${TABLE}.SYSTEM_ACCRUE ;;
  }

  dimension: tb_calc_rule {
    type: string
    sql: ${TABLE}.TB_CALC_RULE ;;
  }

  dimension: tier_mgmt_type {
    type: string
    sql: ${TABLE}.TIER_MGMT_TYPE ;;
  }

  dimension: util_type {
    type: string
    sql: ${TABLE}.UTIL_TYPE ;;
  }

  dimension_group: ver_end_date {
    type: time
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: ver_num {
    type: string
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension_group: ver_start_date {
    type: time
    sql: ${TABLE}.VER_START_DATE ;;
  }

  dimension: src_sys_rbt_strategy_rpt_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_RBT_STRATEGY_RPT_ID ;;
  }

  dimension: src_sys_strategy_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_STRATEGY_ID ;;
  }

  dimension: strategy_end_ver_num {
    type: string
    sql: ${TABLE}.STRATEGY_END_VER_NUM ;;
  }

  dimension: strategy_ver_num {
    type: string
    sql: ${TABLE}.STRATEGY_VER_NUM ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  set: detail {
    fields: [
      accrual_rate,
      benefit_calc_rule,
      calc_level,
      contract_type,
      doc_tz_eff_end_date,
      doc_tz_eff_start_date,
      effective_timezone,
      eff_end_date_time,
      eff_start_date_time,
      end_ver_num,
      flat_program,
      grp_name,
      latest_flag,
      late_date_lag,
      market_basket_type,
      non_std_program,
      notes,
      num_tiers,
      order_idx,
      payment_cust_type,
      payment_freq,
      payment_grace_freq,
      payment_level,
      processing_date_lag,
      program_name,
      program_sub_type,
      program_sub_type_name,
      qual_method,
      rx_norm_method,
      sale_line_from,
      sale_line_type,
      schedule_basis,
      spreadsheet_end_date_time,
      spreadsheet_name,
      spreadsheet_start_date_time,
      spreadsheet_type,
      src_strategy_name,
      src_strategy_num,
      src_strategy_type,
      src_strategy_ver_num,
      src_sys_date_updated_time,
      strategy_based_flag,
      system_accrue,
      tb_calc_rule,
      tier_mgmt_type,
      util_type,
      ver_end_date_time,
      ver_num,
      ver_start_date_time,
      strategy_end_ver_num,
      strategy_ver_num,
      type
    ]
  }
}
