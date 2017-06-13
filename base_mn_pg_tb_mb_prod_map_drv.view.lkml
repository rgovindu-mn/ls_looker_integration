view: base_mn_pg_tb_mb_prod {
  derived_table: {
    sql: SELECT
       PGTBMB.PG_TIER_BASIS_WID,
       PGTBMB.BASKET_WID,
       PGTBMB.PRODUCT_WID,
              PGTBMB.EFF_START_DATE,
              PGTBMB.EFF_END_DATE,
              PGTBMB.EFF_START_DATE_WID,
              PGTBMB.EFF_END_DATE_WID,
              PGTBMB.PROD_ADDED_DATE_WID,
              PGTBMB.PROD_ADDED_DATE,
              CASE WHEN PGTBMB.EXCLUDED_FLAG = 'N' THEN P.PRODUCT_NAME ELSE NULL END AS INCLUDED_PRODUCT_NAME,
              CASE WHEN PGTBMB.EXCLUDED_FLAG = 'N' THEN P.PRODUCT_NUM ELSE NULL  END AS INCLUDED_PRODUCT_NUM,
              CASE WHEN PGTBMB.EXCLUDED_FLAG = 'N' THEN PGTBMB.PRODUCT_WID ELSE NULL  END AS INCLUDED_PRODUCT_WID,
              CASE WHEN PGTBMB.EXCLUDED_FLAG = 'Y' THEN P.PRODUCT_NAME  ELSE NULL END AS EXCLUDED_PRODUCT_NAME,
              CASE WHEN PGTBMB.EXCLUDED_FLAG = 'Y' THEN P.PRODUCT_NUM  ELSE NULL  END AS EXCLUDED_PRODUCT_NUM,
              CASE WHEN PGTBMB.EXCLUDED_FLAG = 'Y' THEN PGTBMB.PRODUCT_WID ELSE NULL  END AS EXCLUDED_PRODUCT_WID,
              CASE WHEN PGTBMB.EXCLUDED_FLAG = 'N' THEN PGTBMB.EFF_START_DATE ELSE NULL END AS INCLUDED_EFF_START_DATE,
              CASE WHEN PGTBMB.EXCLUDED_FLAG = 'N' THEN PGTBMB.EFF_END_DATE ELSE NULL  END AS INCLUDED_EFF_END_DATE,
              CASE WHEN PGTBMB.EXCLUDED_FLAG = 'N' THEN PGTBMB.PROD_ADDED_DATE ELSE NULL  END AS INCLUDED_PROD_ADDED_DATE,
              CASE WHEN PGTBMB.EXCLUDED_FLAG = 'Y' THEN PGTBMB.EFF_START_DATE ELSE NULL END AS EXCLUDED_EFF_START_DATE,
              CASE WHEN PGTBMB.EXCLUDED_FLAG = 'Y' THEN PGTBMB.EFF_END_DATE ELSE NULL  END AS EXCLUDED_EFF_END_DATE,
              CASE WHEN PGTBMB.EXCLUDED_FLAG = 'Y' THEN PGTBMB.PROD_ADDED_DATE ELSE NULL  END AS EXCLUDED_PROD_ADDED_DATE,
              PGTBMB.EXCLUDED_FLAG
      FROM  MN_PG_TB_MB_PROD_MAP_ALL_VW PGTBMB
          JOIN MN_PRODUCT_DIM_VW P ON P.PRODUCT_WID=PGTBMB.PRODUCT_WID
       ;;
  }

  measure: count {
    type: count
  }

  dimension: pg_tier_basis_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PG_TIER_BASIS_WID ;;
  }

  dimension: basket_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.BASKET_WID ;;
  }

  dimension: product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension_group: eff_start_date {
    type: time
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension_group: eff_end_date {
    type: time
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension: eff_start_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.EFF_START_DATE_WID ;;
  }

  dimension: eff_end_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.EFF_END_DATE_WID ;;
  }

  dimension: prod_added_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PROD_ADDED_DATE_WID ;;
  }

  dimension_group: prod_added_date {
    type: time
    sql: ${TABLE}.PROD_ADDED_DATE ;;
  }

  dimension: included_product_name {
    type: string
    sql: ${TABLE}.INCLUDED_PRODUCT_NAME ;;
  }

  dimension: included_product_num {
    type: string
    sql: ${TABLE}.INCLUDED_PRODUCT_NUM ;;
  }

  dimension: included_product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.INCLUDED_PRODUCT_WID ;;
  }

  dimension: excluded_product_name {
    type: string
    sql: ${TABLE}.EXCLUDED_PRODUCT_NAME ;;
  }

  dimension: excluded_product_num {
    type: string
    sql: ${TABLE}.EXCLUDED_PRODUCT_NUM ;;
  }

  dimension: excluded_product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.EXCLUDED_PRODUCT_WID ;;
  }

  dimension_group: included_eff_start_date {
    type: time
    sql: ${TABLE}.INCLUDED_EFF_START_DATE ;;
  }

  dimension_group: included_eff_end_date {
    type: time
    sql: ${TABLE}.INCLUDED_EFF_END_DATE ;;
  }

  dimension_group: included_prod_added_date {
    type: time
    sql: ${TABLE}.INCLUDED_PROD_ADDED_DATE ;;
  }

  dimension_group: excluded_eff_start_date {
    type: time
    sql: ${TABLE}.EXCLUDED_EFF_START_DATE ;;
  }

  dimension_group: excluded_eff_end_date {
    type: time
    sql: ${TABLE}.EXCLUDED_EFF_END_DATE ;;
  }

  dimension_group: excluded_prod_added_date {
    type: time
    sql: ${TABLE}.EXCLUDED_PROD_ADDED_DATE ;;
  }

  dimension: excluded_flag {
    type: string
    sql: ${TABLE}.EXCLUDED_FLAG ;;
  }

}
