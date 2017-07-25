view: mn_customer_dim_reuse {
  sql_table_name: MN_CUSTOMER_DIM_VW ;;

  dimension: account_size {
    type: string
    sql: ${TABLE}.ACCOUNT_SIZE ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.ADDRESS ;;
  }

  dimension: address_type {
    type: string
    sql: ${TABLE}.ADDRESS_TYPE ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: credit_rebill_regexp_criteria {
    type: string
    sql: ${TABLE}.CREDIT_REBILL_REGEXP_CRITERIA ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: cust_domain {
    type: string
    label: "Customer Domain"
    sql: ${TABLE}.CUST_DOMAIN ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CUSTOMER_NAME ;;
  }

  dimension: customer_num {
    type: string
    label: "Customer ID"
    sql: ${TABLE}.CUSTOMER_NUM ;;
  }

  dimension: customer_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension: customer_type {
    hidden: yes
    type: string
    sql: ${TABLE}.MEMBER_INFO_TYPE ;;
  }

  dimension_group: date_created {
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
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
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
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: external_segment {
    type: string
    sql: ${TABLE}.EXTERNAL_SEGMENT ;;
  }

  dimension: member_info_type {
    type: string
    label: "Customer Type"
    sql: ${TABLE}.MEMBER_INFO_TYPE ;;
  }

  dimension: member_status {
    type: string
    sql: ${TABLE}.MEMBER_STATUS ;;
  }

  dimension: org_id {
    type: string
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: org_id_type {
    type: string
    sql: ${TABLE}.ORG_ID_TYPE ;;
  }

  dimension: plan_type {
    type: string
    sql: ${TABLE}.PLAN_TYPE ;;
  }

  dimension: pmt_method {
    type: string
    label: "Payment Method"
    sql: ${TABLE}.PMT_METHOD ;;
  }

  dimension: postal_zip {
    type: string
    sql: ${TABLE}.POSTAL_ZIP ;;
  }

  dimension: purchase_method {
    type: string
    sql: ${TABLE}.PURCHASE_METHOD ;;
  }

  dimension: run_id {
    hidden:  yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: segmentation_attrubute1 {
    type: string
    sql: ${TABLE}.SEG_ATTR1 ;;
  }

  dimension: segmentation_attrubute2 {
    type: string
    sql: ${TABLE}.SEG_ATTR2 ;;
  }

  dimension: segmentation_attrubute3 {
    type: string
    sql: ${TABLE}.SEG_ATTR3 ;;
  }

  dimension: segmentation_attrubute4 {
    type: string
    sql: ${TABLE}.SEG_ATTR4 ;;
  }

  dimension: segmentation_attrubute5 {
    type: string
    sql: ${TABLE}.SEG_ATTR5 ;;
  }

  dimension: source_system_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_cust_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CUST_ID ;;
  }

  dimension_group: src_sys_date_created {
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
    sql: ${TABLE}.SRC_SYS_DATE_CREATED ;;
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

  dimension: state_province {
    type: string
    sql: ${TABLE}.STATE_PROV ;;
  }

  dimension_group: status_eff_end {
    label: "Status End"
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
    sql: ${TABLE}.STATUS_EFF_END_DATE ;;
  }

  dimension_group: status_eff_start {
    label: "Status Start"
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
    sql: ${TABLE}.STATUS_EFF_START_DATE ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [customer_name]
  }

  #*************Plan Aliasing
  dimension: plan_plan_type {
    type: string
    label: "Type"
    sql: ${plan_type} ;;
  }

  dimension: plan_num {
    type: string
    label: "ID"
    sql: ${customer_num} ;;
  }

  dimension: plan_name {
    type: string
    label: "Name"
    sql: ${customer_name} ;;
  }

  #*************PBM Aliasing
  dimension: pbm_member_info_type {
    type: string
    label: "Type"
    sql: ${member_info_type} ;;
  }

  dimension: pbm_num {
    type: string
    label: "ID"
    sql: ${customer_num} ;;
  }

  dimension: pbm_name {
    type: string
    label: "Name"
    sql: ${customer_name} ;;
  }

  #*************BOB Aliasing
  dimension: bob_member_info_type {
    type: string
    label: "Type"
    sql: ${member_info_type} ;;
  }

  dimension: bob_num {
    type: string
    label: "ID"
    sql: ${customer_num} ;;
  }

  dimension: bob_name {
    type: string
    label: "Name"
    sql: ${customer_name} ;;
  }

#*************Customer Field Set
  set: customer {
    fields: [account_size,address,address_type,city,country,credit_rebill_regexp_criteria,currency,
      cust_domain,customer_name,customer_num,external_segment,member_info_type,
      member_status,org_id,org_id_type,plan_type,pmt_method,postal_zip,purchase_method,segmentation_attrubute1,
      segmentation_attrubute2,segmentation_attrubute3,segmentation_attrubute4,segmentation_attrubute5,
      state_province,status_eff_end_date,status_eff_end_month,status_eff_end_quarter,status_eff_end_year,
      status_eff_start_date,status_eff_start_month,status_eff_start_quarter,status_eff_start_year]
  }

#*************PBM Field Set
  set: pbm_set {
    fields: [pbm_member_info_type,pbm_num,pbm_name]
  }

#*************Plan Field Set
  set: plan_set {
    fields: [plan_plan_type,plan_num,plan_name]
  }

#*************BOB Field Set
  set: bob_set {
    fields: [bob_member_info_type,bob_num,bob_name]
  }

}
