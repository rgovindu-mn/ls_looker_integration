view: mn_bid_award_flat_fact {
  derived_table: {
#     select ba1.PG_WID,
#       ba1.REF_NUM AS TIER1_BIDAWARD_ID,
#       ba2.REF_NUM AS TIER2_BIDAWARD_ID,
#       ba3.REF_NUM AS TIER3_BIDAWARD_ID,
#       ba4.REF_NUM AS TIER4_BIDAWARD_ID,
#       ba5.REF_NUM AS TIER5_BIDAWARD_ID,
#       ba6.REF_NUM AS TIER6_BIDAWARD_ID,
#       ba7.REF_NUM AS TIER7_BIDAWARD_ID,
#       ba8.REF_NUM AS TIER8_BIDAWARD_ID,
#       ba9.REF_NUM AS TIER9_BIDAWARD_ID
#       from MN_BID_AWARD_FACT_VW  ba1
#       LEFT OUTER JOIN MN_BID_AWARD_FACT_VW  ba2 ON ba1.PG_WID=ba2.PG_WID AND ba2.TIER_INDEX=2
#       LEFT OUTER JOIN MN_BID_AWARD_FACT_VW  ba3 ON ba1.PG_WID=ba3.PG_WID AND ba3.TIER_INDEX=3
#       LEFT OUTER JOIN MN_BID_AWARD_FACT_VW  ba4 ON ba1.PG_WID=ba4.PG_WID AND ba4.TIER_INDEX=4
#       LEFT OUTER JOIN MN_BID_AWARD_FACT_VW  ba5 ON ba1.PG_WID=ba5.PG_WID AND ba5.TIER_INDEX=5
#       LEFT OUTER JOIN MN_BID_AWARD_FACT_VW  ba6 ON ba1.PG_WID=ba6.PG_WID AND ba6.TIER_INDEX=6
#       LEFT OUTER JOIN MN_BID_AWARD_FACT_VW  ba7 ON ba1.PG_WID=ba7.PG_WID AND ba7.TIER_INDEX=7
#       LEFT OUTER JOIN MN_BID_AWARD_FACT_VW  ba8 ON ba1.PG_WID=ba8.PG_WID AND ba8.TIER_INDEX=8
#       LEFT OUTER JOIN MN_BID_AWARD_FACT_VW  ba9 ON ba1.PG_WID=ba9.PG_WID AND ba9.TIER_INDEX=9
#       WHERE  ba1.TIER_INDEX=1
    sql:
      select PG_WID,
      CUSTOMER_WID,
      MAX(CASE WHEN TIER_INDEX = 1 THEN REF_NUM ELSE NULL END) AS TIER1_BIDAWARD_ID,
      MAX(CASE WHEN TIER_INDEX = 2 THEN REF_NUM ELSE NULL END) AS TIER2_BIDAWARD_ID,
      MAX(CASE WHEN TIER_INDEX = 3 THEN REF_NUM ELSE NULL END) AS TIER3_BIDAWARD_ID,
      MAX(CASE WHEN TIER_INDEX = 4 THEN REF_NUM ELSE NULL END) AS TIER4_BIDAWARD_ID,
      MAX(CASE WHEN TIER_INDEX = 5 THEN REF_NUM ELSE NULL END) AS TIER5_BIDAWARD_ID,
      MAX(CASE WHEN TIER_INDEX = 6 THEN REF_NUM ELSE NULL END) AS TIER6_BIDAWARD_ID,
      MAX(CASE WHEN TIER_INDEX = 7 THEN REF_NUM ELSE NULL END) AS TIER7_BIDAWARD_ID,
      MAX(CASE WHEN TIER_INDEX = 8 THEN REF_NUM ELSE NULL END) AS TIER8_BIDAWARD_ID,
      MAX(CASE WHEN TIER_INDEX = 9 THEN REF_NUM ELSE NULL END) AS TIER9_BIDAWARD_ID
      from MN_BID_AWARD_FACT_VW  ba1
      WHERE  ba1.TIER_INDEX BETWEEN 1 AND 9
      GROUP BY PG_WID, CUSTOMER_WID, GEN_NAME
       ;;
  }

  dimension: pg_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: tier1_bidaward_id {
    type: string
    sql: ${TABLE}.TIER1_BIDAWARD_ID ;;
  }

  dimension: tier2_bidaward_id {
    type: string
    sql: ${TABLE}.TIER2_BIDAWARD_ID ;;
  }

  dimension: tier3_bidaward_id {
    type: string
    sql: ${TABLE}.TIER3_BIDAWARD_ID ;;
  }

  dimension: tier4_bidaward_id {
    type: string
    sql: ${TABLE}.TIER4_BIDAWARD_ID ;;
  }

  dimension: tier5_bidaward_id {
    type: string
    sql: ${TABLE}.TIER5_BIDAWARD_ID ;;
  }

  dimension: tier6_bidaward_id {
    type: string
    sql: ${TABLE}.TIER6_BIDAWARD_ID ;;
  }

  dimension: tier7_bidaward_id {
    type: string
    sql: ${TABLE}.TIER7_BIDAWARD_ID ;;
  }

  dimension: tier8_bidaward_id {
    type: string
    sql: ${TABLE}.TIER8_BIDAWARD_ID ;;
  }

  dimension: tier9_bidaward_id {
    type: string
    sql: ${TABLE}.TIER9_BIDAWARD_ID ;;
  }

}
