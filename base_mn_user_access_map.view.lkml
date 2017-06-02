view: mn_user_access_map {
    derived_table: {
      sql:SELECT DISTINCT us.member_name AS USER_NAME,
                us.user_wid,
                mp.customer_wid
              FROM
                (SELECT slr.REGION_MANAGER_WID AS USER_WID,
                  slr.seller_hrc_wid
                FROM MN_SELLER_HRC_DIM slr
                WHERE REGION_MANAGER_WID IS NOT NULL
                UNION
                SELECT slr.ENTERPRISE_MANAGER_WID AS USER_WID,
                  slr.seller_hrc_wid
                FROM MN_SELLER_HRC_DIM slr
                WHERE ENTERPRISE_MANAGER_WID IS NOT NULL
                UNION
                SELECT slr.TERR_MANAGER_WID AS USER_WID,
                  slr.seller_hrc_wid
                FROM MN_SELLER_HRC_DIM slr
                WHERE TERR_MANAGER_WID IS NOT NULL
                UNION
                SELECT slr.DISTRICT_MANAGER_WID AS USER_WID,
                  slr.seller_hrc_wid
                FROM MN_SELLER_HRC_DIM slr
                WHERE DISTRICT_MANAGER_WID IS NOT NULL
                ) mrh
              JOIN MN_SELLER_HRC_CUST_MAP_VW mp
              ON (mrh.seller_hrc_wid = mp.seller_hrc_wid)
              JOIN MN_USER_DIM_VW us
              ON (mrh.USER_WID = us.USER_WID)
       ;;
    }

    dimension: user_name {
      type: string
      sql: ${TABLE}.USER_NAME ;;
    }


    dimension: user_wid {
        type: number
        hidden:  yes
        sql: ${TABLE}.BILL_TO_CUSTOMER_WID ;;
    }

    dimension: customer_wid {
      type: number
      hidden:  yes
      sql: ${TABLE}.CUSTOMER_WID ;;
    }

  }
