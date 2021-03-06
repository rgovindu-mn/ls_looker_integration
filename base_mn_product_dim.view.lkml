view: mn_product_dim {
  sql_table_name: MN_PRODUCT_DIM_VW ;;

  dimension_group: acquisition {
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
    sql: ${TABLE}.ACQUISITION_DATE ;;
  }

  dimension: acquisition_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.ACQUISITION_DATE_WID ;;
  }

  dimension: catalog_level {
    type: string
    sql: ${TABLE}.CATALOG_LEVEL ;;
  }

  dimension: catalog_type {
    type: string
    sql: ${TABLE}.CATALOG_TYPE ;;
  }

  dimension: catalog_type_name {
    type: string
    sql: ${TABLE}.CATALOG_TYPE_NAME ;;
  }

  dimension: cogs {
    type: string
    label: "COGS"
    sql: ${TABLE}.COGS ;;
  }

  dimension: cogs_base {
    type: string
    label: "COGS Base"
    sql: ${TABLE}.COGS_BASE ;;
  }

  dimension: cogs_currency {
    type: string
    label: "COGS Currency"
    sql: ${TABLE}.COGS_CURR ;;
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

  dimension: creation_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.CREATION_DATE_WID ;;
  }

  dimension: custom_code1 {
    type: string
    label: "Custom Code 1"
    sql: ${TABLE}.CUSTOM_CDE1 ;;
  }

  dimension: custom_code2 {
    type: string
    label: "Custom Code 2"
    sql: ${TABLE}.CUSTOM_CDE2 ;;
  }

  dimension: custom_code3 {
    type: string
    label: "Custom Code 3"
    sql: ${TABLE}.CUSTOM_CDE3 ;;
  }

  dimension: custom_code4 {
    type: string
    label: "Custom Code 4"
    sql: ${TABLE}.CUSTOM_CDE4 ;;
  }

  dimension: custom_code5 {
    type: string
    label: "Custom Code 5"
    sql: ${TABLE}.CUSTOM_CDE5 ;;
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

  dimension_group: divestiture {
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
    sql: ${TABLE}.DIVESTITURE_DATE ;;
  }

  dimension: divestiture_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.DIVESTITURE_DATE_WID ;;
  }

  dimension: drug_category {
    type: string
    sql: ${TABLE}.DRUG_CATEGORY ;;
  }

  dimension: drug_category_name {
    type: string
    sql: ${TABLE}.DRUG_CATEGORY_NAME ;;
  }

  dimension: eligible_asp_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.ELIGIBLE_ASP_FLAG ;;
  }

  dimension: eligible_asp_yes_no {
    type: string
    label: "Is Eligible ASP ?"
    sql: CASE WHEN ${eligible_asp_flag} = 'Y' THEN 'Yes'
              WHEN ${eligible_asp_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: eligible_medicaid_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.ELIGIBLE_MEDICAID_FLAG ;;
  }

  dimension: elig_medicaid_yes_no {
    type: string
    label: "Is Eligible Medicaid ?"
    sql: CASE WHEN ${eligible_medicaid_flag} = 'Y' THEN 'Yes'
              WHEN ${eligible_medicaid_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: eligible_phs_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.ELIGIBLE_PHS_FLAG ;;
  }

  dimension: eligible_phs_yes_no {
    type: string
    label: "Is Eligible PHS ?"
    sql: CASE WHEN ${eligible_phs_flag} = 'Y' THEN 'Yes'
              WHEN ${eligible_phs_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: eligible_va_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.ELIGIBLE_VA_FLAG ;;
  }

  dimension: eligible_va_yes_no {
    type: string
    label: "Is Eligible VA ?"
    sql: CASE WHEN ${eligible_va_flag} = 'Y' THEN 'Yes'
              WHEN ${eligible_va_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension_group: first_sales {
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
    sql: ${TABLE}.FIRST_SALES_DATE ;;
  }

  dimension: first_sales_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.FIRST_SALES_DATE_WID ;;
  }

  dimension: gl_account_code {
    type: string
    label: "GL Account Code"
    sql: ${TABLE}.GL_ACCOUNT_CODE ;;
    label: "GL Account Code"
  }

  dimension_group: manu_term {
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
    sql: ${TABLE}.MANU_TERM_DATE ;;
  }

  dimension: manu_term_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.MANU_TERM_DATE_WID ;;
  }

  dimension_group: market_entry {
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
    sql: ${TABLE}.MARKET_ENTRY_DATE ;;
  }

  dimension: market_entry_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.MARKET_ENTRY_DATE_WID ;;
  }

  dimension: medicaid_units_per_pack {
    type: string
    sql: ${TABLE}.MEDICAID_UNITS_PER_PACK ;;
  }

  dimension: ndc {
    type: string
    sql: ${TABLE}.NDC ;;
    label: "NDC"
  }

  dimension: non_cmty_pharma_drug_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.NON_CMTY_PHARMA_DRUG_FLAG ;;
  }

  dimension: non_cmty_pharma_drug_yes_no {
    type: string
    label: "Is Non Community Pharma Drug ?"
    sql: CASE WHEN ${non_cmty_pharma_drug_flag} = 'Y' THEN 'Yes'
              WHEN ${non_cmty_pharma_drug_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: product_description {
    type: string
    sql: ${TABLE}.PRODUCT_DESC ;;
  }

  dimension: product_name {
    type: string
    label: "Product Name"
    sql: ${TABLE}.PRODUCT_NAME ;;
  }

  dimension: product_num {
    type: string
    label: "Product Number"
    sql: ${TABLE}.PRODUCT_NUM ;;
  }

  dimension: product_type {
    hidden: yes
    type: string
    sql: ${TABLE}.PRODUCT_TYPE ;;
  }

  dimension: product_type_adhoc {
    type: string
    label: "Product Type"
    sql: CASE WHEN ${product_type} ='Bundle'  THEN 'Kit' ELSE ${product_type}  END ;;
  }

  dimension: product_wid {
    hidden:  yes
    type: number
    primary_key: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: run_id {
    hidden:  yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension_group: shelf_life_exp {
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
    sql: ${TABLE}.SHELF_LIFE_EXP_DATE ;;
    label: "Shelf Life Expiration"
  }

  dimension: shelf_life_exp_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.SHELF_LIFE_EXP_DATE_WID ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
    label: "SKU"
  }

  dimension: source_system_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_prod_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PROD_ID ;;
  }

  dimension: thera_code {
    type: string
    sql: ${TABLE}.THERA_CODE ;;
  }

  dimension: thera_code_name {
    type: string
    sql: ${TABLE}.THERA_CODE_NAME ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [product_name, drug_category_name, thera_code_name]
  }

  measure: number_of_product_SKUs_with_claims {
    type: count_distinct
    label: "# of Product SKUs with claims"
    value_format_name: decimal_0
    sql: ${sku} ;;
  }
}
