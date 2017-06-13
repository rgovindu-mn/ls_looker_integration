view: mn_pg_prod_adhoc_map {
    derived_table: {
      sql: SELECT DISTINCT PPM.PG_WID,
        PPM.PRODUCT_WID AS PG_PRODUCT_WID,
        PPM.EFF_START_DATE,
        PPM.EFF_END_DATE,
        PPM.EFF_START_DATE_WID,
        PPM.EFF_END_DATE_WID,
        PPM.PROD_ADDED_DATE_WID,
        PPM.PROD_ADDED_DATE,
        PPM.EXCLUDED_FLAG,
        P1.LEVEL0_PROD_WID AS PG_EXPANDED_PRODUCT_WID,
        PPM.BASKET_WID     AS PG_BASKET_WID,
        PPM.SRC_SYS_STRUCT_LI_ID,
        PPM.SRC_SYS_INCLUDED_LI_ID
      FROM MN_PG_PROD_MAP_ALL_VW PPM
      JOIN MN_PRODUCT_MAP_ALL_VERS_VW P1
      ON (P1.LEVEL0_PROD_WID = PPM.PRODUCT_WID
      OR P1.LEVEL1_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL2_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL3_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL4_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL5_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL6_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL7_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL8_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL9_PROD_WID  = PPM.PRODUCT_WID)
       ;;
    }

    measure: count {
      type: count
      hidden: yes
    }

    dimension: pg_wid {
      type: number
      hidden: yes
      sql: ${TABLE}.PG_WID ;;
    }

    dimension: pg_product_wid {
      type: number
      hidden: yes
      sql: ${TABLE}.PG_PRODUCT_WID ;;
    }

    dimension: effective_start_date {
      type: date
      sql: ${TABLE}.EFF_START_DATE ;;
    }

    dimension: effective_end_date {
      type: date
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

    dimension: prod_added_date {
      type: date
      sql: ${TABLE}.PROD_ADDED_DATE ;;
    }

    dimension: excluded_flag {
      type: string
      sql: ${TABLE}.EXCLUDED_FLAG ;;
    }

    dimension: is_market_basket_product {
      type: string
      sql: CASE WHEN ${pg_basket_wid} IS NULL THEN 'N' ELSE 'Y' END ;;
    }


  dimension: pg_expanded_product_wid {
      type: number
      hidden: yes
      sql: ${TABLE}.PG_EXPANDED_PRODUCT_WID ;;
    }

    dimension: pg_basket_wid {
      type: number
      hidden: yes
      sql: ${TABLE}.PG_BASKET_WID ;;
    }

    dimension: src_sys_struct_li_id {
      type: number
      hidden: yes
      sql: ${TABLE}.SRC_SYS_STRUCT_LI_ID ;;
    }

    dimension: src_sys_included_li_id {
      type: number
      hidden: yes
      sql: ${TABLE}.SRC_SYS_INCLUDED_LI_ID ;;
    }


}
