view: mn_combined_rebate_program_dim {
  derived_table: {
    sql: SELECT
            RP.ACCRUAL_TYPE_WID,
            RP.PROGRAM_TYPE_WID,
            RP.PMT_TYPE_WID,
            RP.PROGRAM_WID,
            RP.PMT_METHOD_WID,
            RP.ORG_WID,
            Null as ACCRU_CUST_WID,
            Null as CUSTOMER_WID,
            RP.PAYEE_CUSTOMER_WID,
            RP.ACCRUAL_RATE,
            RP.BENEFIT_CALC_RULE,
            RP.CALC_LEVEL,
            'GMT' || TZ_OFFSET(RP.EFFECTIVE_TIMEZONE) AS EFFECTIVE_TIMEZONE_GMT,
            RP.DOC_TZ_EFF_END_DATE,
            RP.DOC_TZ_EFF_START_DATE,
            RP.END_VER_NUM,
            RP.FLAT_PROGRAM,
            RP.GRP_NAME,
            RP.LATEST_FLAG,
            RP.LATE_DATE_LAG,
            Null as MARKET_BASKET_TYPE,
            RP.NON_STD_PROGRAM,
            RP.NUM_TIERS,
            RP.ORDER_IDX ,
            RP.PAYMENT_CUST_TYPE,
            RP.PAYMENT_FREQ,
            RP.PAYMENT_GRACE_FREQ,
            RP.PAYMENT_LEVEL,
            RP.PROCESSING_DATE_LAG,
            RP.PROGRAM_NAME,
            RP.PROGRAM_SUB_TYPE,
            RP.PROGRAM_SUB_TYPE_NAME,
            Null as QUAL_METHOD,
            Null as RX_NORM_METHOD,
            RP.SALE_LINE_FROM,
            RP.SALE_LINE_TYPE,
            RP.SCHEDULE_BASIS,
            RP.SRC_STRATEGY_NAME,
            RP.SRC_STRATEGY_NUM,
            RP.SRC_STRATEGY_TYPE,
            RP.SRC_STRATEGY_VER_NUM,
            RP.SRC_SYS_PROGRAM_ID,
            RP.STRATEGY_BASED_FLAG,
            RP.SYSTEM_ACCRUE,
            RP.TB_CALC_RULE,
            Null as TIER_MGMT_TYPE,
            Null as UTIL_TYPE,
            RP.VER_END_DATE,
            RP.VER_NUM,
            RP.VER_START_DATE,
            RP.CONTRACT_TYPE AS CONTRACT_TYPE,
            RP.SRC_SYS_PK_ID AS SRC_SYS_PK_ID,
            RP.SRC_SYS_MGR_ID SRC_SYS_MGR_ID,
            CF.CONTRACT_WID AS CONTRACT_WID
            FROM
            MN_REBATE_PROGRAM_DIM_VW RP
            INNER JOIN MN_CONTRACT_FACT_VW CF ON CF.PROGRAM_WID = RP.PROGRAM_WID AND CF.RECORD_TYPE = 2
            WHERE RP.STRATEGY_BASED_FLAG='N'

                    UNION

            SELECT
            RPSD.ACCRUAL_TYPE_WID,
            RP.PROGRAM_TYPE_WID,
            RPSD.PMT_TYPE_WID,
            RPSD.PROGRAM_WID,
            RP.PMT_METHOD_WID,
            RP.ORG_WID,
            RPSD.ACCRU_CUST_WID,
            RPSD.CUSTOMER_WID,
            RPSD.PAYEE_CUSTOMER_WID,
            RPSD.ACCRUAL_RATE,
            RP.BENEFIT_CALC_RULE,
            RP.CALC_LEVEL,
            'GMT' || TZ_OFFSET(RP.EFFECTIVE_TIMEZONE) AS EFFECTIVE_TIMEZONE_GMT,
            RP.DOC_TZ_EFF_END_DATE,
            RP.DOC_TZ_EFF_START_DATE,
            RP.END_VER_NUM,
            RP.FLAT_PROGRAM,
            RP.GRP_NAME,
            RP.LATEST_FLAG,
            RPSD.LATE_DATE_LAG,
            RPSD.MARKET_BASKET_TYPE,
            RPSD.NON_STD_PROGRAM,
            RPSD.NUM_TIERS,
            RPSD.ORDER_IDX ,
            RPSD.PAYMENT_CUST_TYPE,
            RP.PAYMENT_FREQ,
            RP.PAYMENT_GRACE_FREQ,
            RPSD.PAYMENT_LEVEL,
            RPSD.PROCESSING_DATE_LAG,
            RPSD.PROGRAM_NAME,
            RP.PROGRAM_SUB_TYPE,
            RP.PROGRAM_SUB_TYPE_NAME,
            RPSD.QUAL_METHOD,
            RPSD.RX_NORM_METHOD,
            RPSD.SALE_LINE_FROM,
            RPSD.SALE_LINE_TYPE,
            RP.SCHEDULE_BASIS,
            RP.SRC_STRATEGY_NAME,
            RP.SRC_STRATEGY_NUM,
            RP.SRC_STRATEGY_TYPE,
            RP.SRC_STRATEGY_VER_NUM,
            RP.SRC_SYS_PROGRAM_ID,
            RP.STRATEGY_BASED_FLAG,
            RPSD.SYSTEM_ACCRUE,
            RP.TB_CALC_RULE,
            RPSD.TIER_MGMT_TYPE,
            RPSD.UTIL_TYPE,
            RPSD.VER_END_DATE,
            RP.VER_NUM,
            RPSD.VER_START_DATE,
            RP.CONTRACT_TYPE AS CONTRACT_TYPE,
            RP.SRC_SYS_PK_ID AS SRC_SYS_PK_ID,
            RPSD.SRC_SYS_MGR_ID SRC_SYS_MGR_ID,
            CF.CONTRACT_WID AS CONTRACT_WID
            FROM
            MN_REBATE_PROGRAM_SD_RPT_VW RPSD
            LEFT JOIN MN_REBATE_PROGRAM_DIM_VW RP ON RP.PROGRAM_WID = RPSD.PROGRAM_WID
            INNER JOIN MN_CONTRACT_FACT_VW CF ON CF.PROGRAM_WID = RPSD.PROGRAM_WID AND CF.RECORD_TYPE = 2
            WHERE RP.STRATEGY_BASED_FLAG='Y'
             ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [detail*]
  }

  dimension: accrual_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ACCRUAL_TYPE_WID ;;
  }

  dimension: program_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PROGRAM_TYPE_WID ;;
  }

  dimension: pmt_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PMT_TYPE_WID ;;
  }

  dimension: program_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: pmt_method_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PMT_METHOD_WID ;;
  }

  dimension: org_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: accru_cust_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ACCRU_CUST_WID ;;
  }

  dimension: customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension: payee_customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PAYEE_CUSTOMER_WID ;;
  }

  dimension: accrual_rate {
    type: string
    sql: ${TABLE}.ACCRUAL_RATE ;;
  }

  dimension: benefit_calc_rule {
    type: string
    sql: ${TABLE}.BENEFIT_CALC_RULE ;;
  }

  dimension: calc_level {
    type: string
    sql: ${TABLE}.CALC_LEVEL ;;
  }

  dimension: effective_timezone_gmt {
    type: string
    sql: ${TABLE}.EFFECTIVE_TIMEZONE_GMT ;;
  }

  dimension: doc_tz_eff_end_date {
    type: date
    sql: ${TABLE}.DOC_TZ_EFF_END_DATE ;;
  }

  dimension: doc_tz_eff_start_date {
    type: date
    sql: ${TABLE}.DOC_TZ_EFF_START_DATE ;;
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
    label: "Group Name"
    sql: ${TABLE}.GRP_NAME ;;
  }

  dimension: latest_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.LATEST_FLAG ;;
  }

  dimension: latest_flag_yes_no {
    type: string
    label: "Is Latest ?"
    sql: CASE WHEN ${TABLE}.LATEST_FLAG = 'Y' THEN 'Yes' ELSE 'No' END ;;
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

  dimension: num_tiers {
    type: string
    sql: ${TABLE}.NUM_TIERS ;;
  }

  dimension: order_idx {
    type: string
    sql: ${TABLE}.ORDER_IDX ;;
  }

  dimension: payment_cust_type {
    type: string
    label: "Payment Customer Type"
    sql: ${TABLE}.PAYMENT_CUST_TYPE ;;
  }

  dimension: payment_freq {
    type: string
    label: "Payment Frequency"
    sql: ${TABLE}.PAYMENT_FREQ ;;
  }

  dimension: payment_grace_freq {
    type: string
    label: "Payment Grace Frequency"
    sql: ${TABLE}.PAYMENT_GRACE_FREQ ;;
  }

  dimension: payment_level {
    type: string
    sql: ${TABLE}.PAYMENT_LEVEL ;;
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

  dimension: qual_method {
    type: string
    label: "Qualification Method"
    sql: ${TABLE}.QUAL_METHOD ;;
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

  dimension: src_strategy_name {
    type: string
    label: "Strategy Name"
    sql: ${TABLE}.SRC_STRATEGY_NAME ;;
  }

  dimension: src_strategy_num {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_STRATEGY_NUM ;;
  }

  dimension: src_strategy_type {
    type: string
    label: "Strategy Type"
    sql: ${TABLE}.SRC_STRATEGY_TYPE ;;
  }

  dimension: src_strategy_ver_num {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_STRATEGY_VER_NUM ;;
  }

  dimension: src_sys_program_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_PROGRAM_ID ;;
  }

  dimension: strategy_based_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: strgy_based_flag_yes_no {
    type: string
    label: "Strategy Based ?"
    sql: CASE WHEN ${TABLE}.STRATEGY_BASED_FLAG = 'Y' THEN 'Yes' ELSE 'No' END;;
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
    label: "Version End Date"
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: ver_num {
    type: string
    label: "Version Number"
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension_group: ver_start_date {
    type: time
    label: "Version Start Date"
    sql: ${TABLE}.VER_START_DATE ;;
  }

  dimension: contract_type {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_TYPE ;;
  }

  dimension: src_sys_pk_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_PK_ID ;;
  }

  dimension: src_sys_mgr_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: contract_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  set: detail {
    fields: [
      accrual_rate,
      benefit_calc_rule,
      calc_level,
      effective_timezone_gmt,
      doc_tz_eff_end_date,
      doc_tz_eff_start_date,
      end_ver_num,
      flat_program,
      grp_name,
      latest_flag,
      late_date_lag,
      market_basket_type,
      non_std_program,
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
      src_strategy_name,
      src_strategy_num,
      src_strategy_type,
      src_strategy_ver_num,
      strategy_based_flag,
      system_accrue,
      tb_calc_rule,
      tier_mgmt_type,
      util_type,
      ver_end_date_time,
      ver_num,
      ver_start_date_time,
      contract_type,
    ]
  }
}
