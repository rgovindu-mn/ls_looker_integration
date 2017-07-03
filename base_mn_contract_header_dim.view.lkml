view: mn_contract_header_dim {
  sql_table_name: MN_CONTRACT_HEADER_DIM_VW ;;

  label: "Contract"

  dimension: additional_delegate_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.ADDITIONAL_DELEGATE_WID ;;
  }

  dimension: alternate_contract_number {
    type: string
    sql: ${TABLE}.ALTERNATE_CTRT_NUM ;;
  }

  dimension: amended_flag {
    type: string
    sql:  CASE WHEN ${TABLE}.AMENDED_FLAG = 1 THEN 'Yes'
               WHEN ${TABLE}.AMENDED_FLAG = 0 THEN 'No' ELSE '' END;;
    label: "Amended ?"
  }

  dimension: amendment_count {
    type: number
    sql: ${TABLE}.AMENDMENT_COUNT ;;
  }

  dimension_group: amendment {
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
    sql: ${TABLE}.AMENDMENT_DATE ;;
  }

  dimension: amendment_number {
    type: string
    sql: ${TABLE}.AMENDMENT_NUMBER ;;
  }

  dimension_group: approved {
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
    sql: ${TABLE}.APPROVED_DATE ;;
  }

  dimension: author_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.AUTHOR_WID ;;
  }

  dimension: contract_54_56_flag {
    type: string
    sql: ${TABLE}.CONTRACT_54_56_FLAG ;;
  }

  dimension: contract_domain_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.CONTRACT_DOMAIN_WID ;;
  }

  dimension: contract_name {
    type: string
    sql: ${TABLE}.CONTRACT_NAME ;;
  }

  dimension: contract_number {
    type: string
    sql: ${TABLE}.CONTRACT_NUMBER ;;
  }

  dimension: contract_number_url {
    type: string
    label: "Contract Dashboard URL"
    sql: ${TABLE}.CONTRACT_NUMBER ;;
    html: <a href="/dashboards/base_sales_intelligence_app_model::si_app_contract_and_products?contract_number={{value}}&">
      {{value}}</a>;;
  }


  dimension: contract_status_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.CONTRACT_STATUS_WID ;;
  }

  dimension: contract_sub_type_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.CONTRACT_SUB_TYPE_WID ;;
  }

  dimension: contract_type_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.CONTRACT_TYPE_WID ;;
  }

  dimension: contract_wid {
    type: number
    primary_key: yes
    hidden:  yes
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension_group: creation {
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
    sql: ${TABLE}.CREATION_DATE ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: cust_amendment_num {
    type: string
    sql: ${TABLE}.CUST_AMENDMENT_NUM ;;
  }

  dimension: customer_contract_id {
    type: string
    sql: ${TABLE}.CUSTOMER_CONTRACT_ID ;;
  }

  dimension_group: date_created {
    hidden:  yes
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
    hidden:  yes
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

  dimension: distribution_method_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.DISTRIBUTION_METHOD_WID ;;
  }

  dimension_group: eff_end {
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
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension_group: eff_start {
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
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension: eligibility_membership {
    type: string
    sql: ${TABLE}.ELIGIBILITY_MEMBERSHIP ;;
  }

  dimension: end_ver_num {
    type: string
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: evergreen_flag {
    type: string
    sql: ${TABLE}.EVERGREEN_FLAG ;;
  }

  dimension: ext_notes {
    type: string
    sql: ${TABLE}.EXT_NOTES ;;
  }

  dimension: filter_applied_to {
    type: string
    sql: ${TABLE}.FILTER_APPLIED_TO ;;
  }

  dimension: generic_brand_type {
    type: string
    sql: ${TABLE}.GENERIC_BRAND_TYPE ;;
  }

  dimension_group: implemented {
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
    sql: ${TABLE}.IMPLEMENTED_DATE ;;
  }

  dimension_group: internal_rejection {
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
    sql: ${TABLE}.INTERNAL_REJECTION_DATE ;;
  }

  dimension: is_340_b_eligible {
    type: string
    sql: ${TABLE}.IS_340B_ELIGIBLE ;;
  }

  dimension: latest_flag {
    type: string
     hidden: yes
    sql: ${TABLE}.LATEST_FLAG;;
  }

  dimension: is_latest {
    type: string
    sql: CASE WHEN ${TABLE}.LATEST_FLAG = 'Y' THEN 'Yes'
      WHEN ${TABLE}.LATEST_FLAG = 'N' THEN 'No' ELSE '' END;;
    label: "Is Latest ?"
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.LOCALE ;;
  }

  dimension: min_order_amt {
    type: string
    sql: ${TABLE}.MIN_ORDER_AMT ;;
  }

  dimension: min_order_block {
    type: string
    sql: ${TABLE}.MIN_ORDER_BLOCK ;;
  }

  dimension: min_order_penalty {
    type: string
    sql: ${TABLE}.MIN_ORDER_PENALTY ;;
  }

  dimension: min_order_qty {
    type: string
    sql: ${TABLE}.MIN_ORDER_QTY ;;
  }

  dimension_group: offer {
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
    sql: ${TABLE}.OFFER_DATE ;;
  }

  dimension: offer_term {
    type: string
    sql: ${TABLE}.OFFER_TERM ;;
  }

  dimension: org_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: owner_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.OWNER_WID ;;
  }

  dimension: parent_contract_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.PARENT_CONTRACT_WID ;;
  }

  dimension: program_only {
    type: string
    sql: CASE WHEN ${TABLE}.PROGRAM_ONLY = 1 THEN 'Yes' ELSE 'No' END ;;
  }

  dimension_group: rejection {
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
    sql: ${TABLE}.REJECTION_DATE ;;
  }

  dimension_group: released {
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
    sql: ${TABLE}.RELEASED_DATE ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: sales_rep_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.SALES_REP_WID ;;
  }

  dimension_group: signature {
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
    sql: ${TABLE}.SIGNATURE_DATE ;;
  }

  dimension_group: signature_due {
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
    sql: ${TABLE}.SIGNATURE_DUE_DATE ;;
  }

  dimension_group: signed_doc_rcvd {
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
    sql: ${TABLE}.SIGNED_DOC_RCVD_DATE ;;
  }

  dimension: signed_ind_type {
    type: string
    sql: ${TABLE}.SIGNED_IND_TYPE ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: source_system_id {
    type: string
    hidden:  yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_contract_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CONTRACT_ID ;;
  }

  dimension_group: src_sys_date_updated {
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
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension: src_sys_mgr_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension_group: termination {
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
    sql: ${TABLE}.TERMINATION_DATE ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.TIMEZONE ;;
  }

  dimension: value {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.VALUE ;;
  }

  dimension_group: version_end {
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
    hidden: yes
    type: string
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension_group: version_start {
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

  dimension: version {
    type: string
    label: "Version Number"
    sql: ${TABLE}.VERSION ;;
  }

  dimension_group: withdrawn {
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
    sql: ${TABLE}.WITHDRAWN_DATE ;;
  }

  dimension: days_to_expire {
    type: number
    sql: TO_NUMBER(to_date(to_char(${TABLE}.eff_end_date,'YYYYDDMM'),'YYYYDDMM')  - trunc(sysdate)) ;;
  }

  dimension: days_to_expire_fmt {
    type: number
    hidden:  yes
    value_format_name: decimal_0
    sql: ${days_to_expire} ;;
    html:  {% if value >0 and value < 60 %}
        <p style="color: white; background-color: red">{{ rendered_value }}</p>
      {% else %}
        {{ rendered_value }}
      {% endif %}
    ;;
  }


  dimension: days_to_expire_0 {
    type: number
    hidden:  yes
    sql: CASE WHEN ${TABLE}.eff_end_date < SYSDATE THEN 0 ELSE to_date(to_char(${TABLE}.eff_end_date,'YYYYDDMM'),'YYYYDDMM')  - trunc(sysdate) END ;;
  }

  dimension: months_to_expire {
    type: number
    sql: CASE WHEN trunc(MONTHS_BETWEEN(${TABLE}.eff_end_date,sysdate)) = 0 THEN  '1 Month' WHEN trunc(MONTHS_BETWEEN(${TABLE}.eff_end_date,sysdate)) BETWEEN 1 and 2 THEN '3 Months' ELSE NULL END ;;
  }

  measure:  contract_value {
    type:  sum
    value_format: "[>=1000000]0,,\"M\";[>=1000]0,\"K\";0"
    sql:  ${TABLE}.value ;;
  }

  # measure: no_of_contracts {
  #   type: count
  #   drill_fields: [contract_name]
  #   label: "# of Contracts"
  # }

  measure: contract_count {
    type: count_distinct
    sql: ${TABLE}.CONTRACT_WID ;;
    label: "Contract Count"
  }

  measure: no_of_contracted_customers {
    type: sum
    sql: CASE WHEN ${TABLE}.OWNER_WID IS NULL THEN 0 ELSE 1 ;;
    label: "# of Contracted Customers"
  }
####AUTO-GENERATED BY CODEGEN doc_tz_signed_doc_rcvd_date

  dimension_group: doc_tz_signed_doc_rcvd {
    type: time
    hidden: no
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DOC_TZ_SIGNED_DOC_RCVD_DATE ;;
  }

####AUTO-GENERATED BY CODEGEN termination_date_wid

  dimension: termination_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.TERMINATION_DATE_WID ;;
  }

####AUTO-GENERATED BY CODEGEN doc_tz_signature_due_date

  dimension_group: doc_tz_signature_due {
    type: time
    hidden: no
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DOC_TZ_SIGNATURE_DUE_DATE ;;
  }

####AUTO-GENERATED BY CODEGEN doc_tz_offer_date

  dimension_group: doc_tz_offer {
    type: time
    hidden: no
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DOC_TZ_OFFER_DATE ;;
  }

####AUTO-GENERATED BY CODEGEN signed_doc_rcvd_date_wid

  dimension: signed_doc_rcvd_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.SIGNED_DOC_RCVD_DATE_WID ;;
  }

####AUTO-GENERATED BY CODEGEN signature_due_date_wid

  dimension: signature_due_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.SIGNATURE_DUE_DATE_WID ;;
  }

####AUTO-GENERATED BY CODEGEN doc_tz_eff_end_date

  dimension_group: doc_tz_eff_end {
    type: time
    hidden: no
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DOC_TZ_EFF_END_DATE ;;
  }

####AUTO-GENERATED BY CODEGEN signature_date_wid

  dimension: signature_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.SIGNATURE_DATE_WID ;;
  }

####AUTO-GENERATED BY CODEGEN implemented_date_wid

  dimension: implemented_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.IMPLEMENTED_DATE_WID ;;
  }

####AUTO-GENERATED BY CODEGEN doc_tz_eff_start_date

  dimension_group: doc_tz_eff_start {
    type: time
    hidden: no
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DOC_TZ_EFF_START_DATE ;;
  }

####AUTO-GENERATED BY CODEGEN quote_id

  dimension: quote_id {
    type: string
    hidden: no
    sql: ${TABLE}.QUOTE_ID ;;
  }

####AUTO-GENERATED BY CODEGEN eff_start_date_wid

  dimension: eff_start_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.EFF_START_DATE_WID ;;
  }

####AUTO-GENERATED BY CODEGEN withdrawn_date_wid

  dimension: withdrawn_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.WITHDRAWN_DATE_WID ;;
  }

####AUTO-GENERATED BY CODEGEN src_sys_pk_id

  dimension: src_sys_pk_id {
    type: number
    hidden: no
    sql: ${TABLE}.SRC_SYS_PK_ID ;;
  }

####AUTO-GENERATED BY CODEGEN doc_tz_signature_date

  dimension_group: doc_tz_signature {
    type: time
    hidden: no
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DOC_TZ_SIGNATURE_DATE ;;
  }

####AUTO-GENERATED BY CODEGEN internal_rejection_date_wid

  dimension: internal_rejection_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.INTERNAL_REJECTION_DATE_WID ;;
  }

####AUTO-GENERATED BY CODEGEN approved_date_wid

  dimension: approved_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.APPROVED_DATE_WID ;;
  }

####AUTO-GENERATED BY CODEGEN src_contract_name

  dimension: src_contract_name {
    type: string
    hidden: no
    sql: ${TABLE}.SRC_CONTRACT_NAME ;;
  }

####AUTO-GENERATED BY CODEGEN rejection_date_wid

  dimension: rejection_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.REJECTION_DATE_WID ;;
  }

####AUTO-GENERATED BY CODEGEN contract_term

  dimension: contract_term {
    type: number
    hidden: no
    sql: ${TABLE}.CONTRACT_TERM ;;
  }

####AUTO-GENERATED BY CODEGEN eff_end_date_wid

  dimension: eff_end_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.EFF_END_DATE_WID ;;
  }

####AUTO-GENERATED BY CODEGEN creation_date_wid

  dimension: creation_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CREATION_DATE_WID ;;
  }

####AUTO-GENERATED BY CODEGEN offer_date_wid

  dimension: offer_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.OFFER_DATE_WID ;;
  }

####AUTO-GENERATED BY CODEGEN released_date_wid

  dimension: released_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.RELEASED_DATE_WID ;;
  }

####AUTO-GENERATED BY CODEGEN amendment_date_wid

  dimension: amendment_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.AMENDMENT_DATE_WID ;;
  }

}
