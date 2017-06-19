view: mn_pg_prc_fact_flat {
    derived_table: {
#       select pa1.PG_WID,
#               pa1.ADJ_LOW AS TIER2_ADJUSTMENT_LOW,
#               pa1.ADJ_HIGH AS TIER2_ADJUSTMENT,
#               pa1.PRC_HIGH AS TIER2_PRICE,
#               pa1.EFF_ADJ AS TIER2_EFFECTIVE_ADJUST,
#               pa1.FREIGHT_CODE AS TIER2_FREIGHT_CODE,
#               pa1.HANDLING AS TIER2_HANDLING,
#               pa1.PAYMENT_CODE AS TIER2_PAYMENT_CODE,
#               pa1.SURCHARGE AS TIER2_SURCHARGE,
#               pa1.TIER_VOLUME AS TIER2_TIER_VOLUME,
#               pa3.ADJ_LOW AS TIER3_ADJUSTMENT_LOW,
#               pa3.ADJ_HIGH AS TIER3_ADJUSTMENT,
#               pa3.PRC_HIGH AS TIER3_PRICE,
#               pa3.EFF_ADJ AS TIER3_EFFECTIVE_ADJUST,
#               pa3.FREIGHT_CODE AS TIER3_FREIGHT_CODE,
#               pa3.HANDLING AS TIER3_HANDLING,
#               pa3.PAYMENT_CODE AS TIER3_PAYMENT_CODE,
#               pa3.SURCHARGE AS TIER3_SURCHARGE,
#               pa3.TIER_VOLUME AS TIER3_TIER_VOLUME,
#               pa4.ADJ_LOW AS TIER4_ADJUSTMENT_LOW,
#               pa4.ADJ_HIGH AS TIER4_ADJUSTMENT,
#               pa4.PRC_HIGH AS TIER4_PRICE,
#               pa4.EFF_ADJ AS TIER4_EFFECTIVE_ADJUST,
#               pa4.FREIGHT_CODE AS TIER4_FREIGHT_CODE,
#               pa4.HANDLING AS TIER4_HANDLING,
#               pa4.PAYMENT_CODE AS TIER4_PAYMENT_CODE,
#               pa4.SURCHARGE AS TIER4_SURCHARGE,
#               pa4.TIER_VOLUME AS TIER4_TIER_VOLUME,
#               pa5.ADJ_LOW AS TIER5_ADJUSTMENT_LOW,
#               pa5.ADJ_HIGH AS TIER5_ADJUSTMENT,
#               pa5.PRC_HIGH AS TIER5_PRICE,
#               pa5.EFF_ADJ AS TIER5_EFFECTIVE_ADJUST,
#               pa5.FREIGHT_CODE AS TIER5_FREIGHT_CODE,
#               pa5.HANDLING AS TIER5_HANDLING,
#               pa5.PAYMENT_CODE AS TIER5_PAYMENT_CODE,
#               pa5.SURCHARGE AS TIER5_SURCHARGE,
#               pa5.TIER_VOLUME AS TIER5_TIER_VOLUME,
#               pa6.ADJ_LOW AS TIER6_ADJUSTMENT_LOW,
#               pa6.ADJ_HIGH AS TIER6_ADJUSTMENT,
#               pa6.PRC_HIGH AS TIER6_PRICE,
#               pa6.EFF_ADJ AS TIER6_EFFECTIVE_ADJUST,
#               pa6.FREIGHT_CODE AS TIER6_FREIGHT_CODE,
#               pa6.HANDLING AS TIER6_HANDLING,
#               pa6.PAYMENT_CODE AS TIER6_PAYMENT_CODE,
#               pa6.SURCHARGE AS TIER6_SURCHARGE,
#               pa6.TIER_VOLUME AS TIER6_TIER_VOLUME,
#               pa7.ADJ_LOW AS TIER7_ADJUSTMENT_LOW,
#               pa7.ADJ_HIGH AS TIER7_ADJUSTMENT,
#               pa7.PRC_HIGH AS TIER7_PRICE,
#               pa7.EFF_ADJ AS TIER7_EFFECTIVE_ADJUST,
#               pa7.FREIGHT_CODE AS TIER7_FREIGHT_CODE,
#               pa7.HANDLING AS TIER7_HANDLING,
#               pa7.PAYMENT_CODE AS TIER7_PAYMENT_CODE,
#               pa7.SURCHARGE AS TIER7_SURCHARGE,
#               pa7.TIER_VOLUME AS TIER7_TIER_VOLUME,
#               pa8.ADJ_LOW AS TIER8_ADJUSTMENT_LOW,
#               pa8.ADJ_HIGH AS TIER8_ADJUSTMENT,
#               pa8.PRC_HIGH AS TIER8_PRICE,
#               pa8.EFF_ADJ AS TIER8_EFFECTIVE_ADJUST,
#               pa8.FREIGHT_CODE AS TIER8_FREIGHT_CODE,
#               pa8.HANDLING AS TIER8_HANDLING,
#               pa8.PAYMENT_CODE AS TIER8_PAYMENT_CODE,
#               pa8.SURCHARGE AS TIER8_SURCHARGE,
#               pa8.TIER_VOLUME AS TIER8_TIER_VOLUME,
#               pa9.ADJ_LOW AS TIER9_ADJUSTMENT_LOW,
#               pa9.ADJ_HIGH AS TIER9_ADJUSTMENT,
#               pa9.PRC_HIGH AS TIER9_PRICE,
#               pa9.EFF_ADJ AS TIER9_EFFECTIVE_ADJUST,
#               pa9.FREIGHT_CODE AS TIER9_FREIGHT_CODE,
#               pa9.HANDLING AS TIER9_HANDLING,
#               pa9.PAYMENT_CODE AS TIER9_PAYMENT_CODE,
#               pa9.SURCHARGE AS TIER9_SURCHARGE,
#               pa9.TIER_VOLUME AS TIER9_TIER_VOLUME
#               from MN_PG_PRODUCT_PRICING_FACT_VW  pa1
#               LEFT OUTER JOIN MN_PG_PRODUCT_PRICING_FACT_VW  pa3 ON pa1.PG_WID=pa3.PG_WID AND pa3.TIER_IDX=3
#               LEFT OUTER JOIN MN_PG_PRODUCT_PRICING_FACT_VW  pa4 ON pa1.PG_WID=pa4.PG_WID AND pa4.TIER_IDX=4
#               LEFT OUTER JOIN MN_PG_PRODUCT_PRICING_FACT_VW  pa5 ON pa1.PG_WID=pa5.PG_WID AND pa5.TIER_IDX=5
#               LEFT OUTER JOIN MN_PG_PRODUCT_PRICING_FACT_VW  pa6 ON pa1.PG_WID=pa6.PG_WID AND pa6.TIER_IDX=6
#               LEFT OUTER JOIN MN_PG_PRODUCT_PRICING_FACT_VW  pa7 ON pa1.PG_WID=pa7.PG_WID AND pa7.TIER_IDX=7
#               LEFT OUTER JOIN MN_PG_PRODUCT_PRICING_FACT_VW  pa8 ON pa1.PG_WID=pa8.PG_WID AND pa8.TIER_IDX=8
#               LEFT OUTER JOIN MN_PG_PRODUCT_PRICING_FACT_VW  pa9 ON pa1.PG_WID=pa9.PG_WID AND pa9.TIER_IDX=9
#               WHERE  pa1.TIER_IDX=2
      sql:
          select PG_WID,
                  MAX(CASE WHEN TIER_IDX = 2 THEN  ADJ_LOW ELSE NULL END) AS TIER2_ADJUSTMENT_LOW,
                  MAX(CASE WHEN TIER_IDX = 2 THEN  ADJ_HIGH ELSE NULL END) AS TIER2_ADJUSTMENT,
                  MAX(CASE WHEN TIER_IDX = 2 THEN  PRC_HIGH ELSE NULL END) AS TIER2_PRICE,
                  MAX(CASE WHEN TIER_IDX = 2 THEN  EFF_ADJ ELSE NULL END) AS TIER2_EFFECTIVE_ADJUST,
                  MAX(CASE WHEN TIER_IDX = 2 THEN  FREIGHT_CODE ELSE NULL END) AS TIER2_FREIGHT_CODE,
                  MAX(CASE WHEN TIER_IDX = 2 THEN  HANDLING ELSE NULL END) AS TIER2_HANDLING,
                  MAX(CASE WHEN TIER_IDX = 2 THEN  PAYMENT_CODE ELSE NULL END) AS TIER2_PAYMENT_CODE,
                  MAX(CASE WHEN TIER_IDX = 2 THEN  SURCHARGE ELSE NULL END) AS TIER2_SURCHARGE,
                  MAX(CASE WHEN TIER_IDX = 1 THEN  TIER_VOLUME ELSE NULL END) AS TIER2_TIER_VOLUME,
                  MAX(CASE WHEN TIER_IDX = 3 THEN ADJ_LOW ELSE NULL END) AS TIER3_ADJUSTMENT_LOW,
                  MAX(CASE WHEN TIER_IDX = 3 THEN ADJ_HIGH ELSE NULL END) AS TIER3_ADJUSTMENT,
                  MAX(CASE WHEN TIER_IDX = 3 THEN PRC_HIGH ELSE NULL END) AS TIER3_PRICE,
                  MAX(CASE WHEN TIER_IDX = 3 THEN EFF_ADJ ELSE NULL END) AS TIER3_EFFECTIVE_ADJUST,
                  MAX(CASE WHEN TIER_IDX = 3 THEN FREIGHT_CODE ELSE NULL END) AS TIER3_FREIGHT_CODE,
                  MAX(CASE WHEN TIER_IDX = 3 THEN HANDLING ELSE NULL END) AS TIER3_HANDLING,
                  MAX(CASE WHEN TIER_IDX = 3 THEN PAYMENT_CODE ELSE NULL END) AS TIER3_PAYMENT_CODE,
                  MAX(CASE WHEN TIER_IDX = 3 THEN SURCHARGE ELSE NULL END) AS TIER3_SURCHARGE,
                  MAX(CASE WHEN TIER_IDX = 3 THEN TIER_VOLUME ELSE NULL END) AS TIER3_TIER_VOLUME,
                  MAX(CASE WHEN TIER_IDX = 4 THEN ADJ_LOW ELSE NULL END) AS TIER4_ADJUSTMENT_LOW,
                  MAX(CASE WHEN TIER_IDX = 4 THEN ADJ_HIGH ELSE NULL END) AS TIER4_ADJUSTMENT,
                  MAX(CASE WHEN TIER_IDX = 4 THEN PRC_HIGH ELSE NULL END) AS TIER4_PRICE,
                  MAX(CASE WHEN TIER_IDX = 4 THEN EFF_ADJ ELSE NULL END) AS TIER4_EFFECTIVE_ADJUST,
                  MAX(CASE WHEN TIER_IDX = 4 THEN FREIGHT_CODE ELSE NULL END) AS TIER4_FREIGHT_CODE,
                  MAX(CASE WHEN TIER_IDX = 4 THEN HANDLING ELSE NULL END) AS TIER4_HANDLING,
                  MAX(CASE WHEN TIER_IDX = 4 THEN PAYMENT_CODE ELSE NULL END) AS TIER4_PAYMENT_CODE,
                  MAX(CASE WHEN TIER_IDX = 4 THEN SURCHARGE ELSE NULL END) AS TIER4_SURCHARGE,
                  MAX(CASE WHEN TIER_IDX = 4 THEN TIER_VOLUME ELSE NULL END) AS TIER4_TIER_VOLUME,
                  MAX(CASE WHEN TIER_IDX = 5 THEN ADJ_LOW ELSE NULL END) AS TIER5_ADJUSTMENT_LOW,
                  MAX(CASE WHEN TIER_IDX = 5 THEN ADJ_HIGH ELSE NULL END) AS TIER5_ADJUSTMENT,
                  MAX(CASE WHEN TIER_IDX = 5 THEN PRC_HIGH ELSE NULL END) AS TIER5_PRICE,
                  MAX(CASE WHEN TIER_IDX = 5 THEN EFF_ADJ ELSE NULL END) AS TIER5_EFFECTIVE_ADJUST,
                  MAX(CASE WHEN TIER_IDX = 5 THEN FREIGHT_CODE ELSE NULL END) AS TIER5_FREIGHT_CODE,
                  MAX(CASE WHEN TIER_IDX = 5 THEN HANDLING ELSE NULL END) AS TIER5_HANDLING,
                  MAX(CASE WHEN TIER_IDX = 5 THEN PAYMENT_CODE ELSE NULL END) AS TIER5_PAYMENT_CODE,
                  MAX(CASE WHEN TIER_IDX = 5 THEN SURCHARGE ELSE NULL END) AS TIER5_SURCHARGE,
                  MAX(CASE WHEN TIER_IDX = 5 THEN TIER_VOLUME ELSE NULL END) AS TIER5_TIER_VOLUME,
                  MAX(CASE WHEN TIER_IDX = 6 THEN ADJ_LOW ELSE NULL END) AS TIER6_ADJUSTMENT_LOW,
                  MAX(CASE WHEN TIER_IDX = 6 THEN ADJ_HIGH ELSE NULL END) AS TIER6_ADJUSTMENT,
                  MAX(CASE WHEN TIER_IDX = 6 THEN PRC_HIGH ELSE NULL END) AS TIER6_PRICE,
                  MAX(CASE WHEN TIER_IDX = 6 THEN EFF_ADJ ELSE NULL END) AS TIER6_EFFECTIVE_ADJUST,
                  MAX(CASE WHEN TIER_IDX = 6 THEN FREIGHT_CODE ELSE NULL END) AS TIER6_FREIGHT_CODE,
                  MAX(CASE WHEN TIER_IDX = 6 THEN HANDLING ELSE NULL END) AS TIER6_HANDLING,
                  MAX(CASE WHEN TIER_IDX = 6 THEN PAYMENT_CODE ELSE NULL END) AS TIER6_PAYMENT_CODE,
                  MAX(CASE WHEN TIER_IDX = 6 THEN SURCHARGE ELSE NULL END) AS TIER6_SURCHARGE,
                  MAX(CASE WHEN TIER_IDX = 6 THEN TIER_VOLUME ELSE NULL END) AS TIER6_TIER_VOLUME,
                  MAX(CASE WHEN TIER_IDX = 7 THEN ADJ_LOW ELSE NULL END) AS TIER7_ADJUSTMENT_LOW,
                  MAX(CASE WHEN TIER_IDX = 7 THEN ADJ_HIGH ELSE NULL END) AS TIER7_ADJUSTMENT,
                  MAX(CASE WHEN TIER_IDX = 7 THEN PRC_HIGH ELSE NULL END) AS TIER7_PRICE,
                  MAX(CASE WHEN TIER_IDX = 7 THEN EFF_ADJ ELSE NULL END) AS TIER7_EFFECTIVE_ADJUST,
                  MAX(CASE WHEN TIER_IDX = 7 THEN FREIGHT_CODE ELSE NULL END) AS TIER7_FREIGHT_CODE,
                  MAX(CASE WHEN TIER_IDX = 7 THEN HANDLING ELSE NULL END) AS TIER7_HANDLING,
                  MAX(CASE WHEN TIER_IDX = 7 THEN PAYMENT_CODE ELSE NULL END) AS TIER7_PAYMENT_CODE,
                  MAX(CASE WHEN TIER_IDX = 7 THEN SURCHARGE ELSE NULL END) AS TIER7_SURCHARGE,
                  MAX(CASE WHEN TIER_IDX = 7 THEN TIER_VOLUME ELSE NULL END) AS TIER7_TIER_VOLUME,
                  MAX(CASE WHEN TIER_IDX = 8 THEN ADJ_LOW ELSE NULL END) AS TIER8_ADJUSTMENT_LOW,
                  MAX(CASE WHEN TIER_IDX = 8 THEN ADJ_HIGH ELSE NULL END) AS TIER8_ADJUSTMENT,
                  MAX(CASE WHEN TIER_IDX = 8 THEN PRC_HIGH ELSE NULL END) AS TIER8_PRICE,
                  MAX(CASE WHEN TIER_IDX = 8 THEN EFF_ADJ ELSE NULL END) AS TIER8_EFFECTIVE_ADJUST,
                  MAX(CASE WHEN TIER_IDX = 8 THEN FREIGHT_CODE ELSE NULL END) AS TIER8_FREIGHT_CODE,
                  MAX(CASE WHEN TIER_IDX = 8 THEN HANDLING ELSE NULL END) AS TIER8_HANDLING,
                  MAX(CASE WHEN TIER_IDX = 8 THEN PAYMENT_CODE ELSE NULL END) AS TIER8_PAYMENT_CODE,
                  MAX(CASE WHEN TIER_IDX = 8 THEN SURCHARGE ELSE NULL END) AS TIER8_SURCHARGE,
                  MAX(CASE WHEN TIER_IDX = 8 THEN TIER_VOLUME ELSE NULL END) AS TIER8_TIER_VOLUME,
                  MAX(CASE WHEN TIER_IDX = 9 THEN ADJ_LOW ELSE NULL END) AS TIER9_ADJUSTMENT_LOW,
                  MAX(CASE WHEN TIER_IDX = 9 THEN ADJ_HIGH ELSE NULL END) AS TIER9_ADJUSTMENT,
                  MAX(CASE WHEN TIER_IDX = 9 THEN PRC_HIGH ELSE NULL END) AS TIER9_PRICE,
                  MAX(CASE WHEN TIER_IDX = 9 THEN EFF_ADJ ELSE NULL END) AS TIER9_EFFECTIVE_ADJUST,
                  MAX(CASE WHEN TIER_IDX = 9 THEN FREIGHT_CODE ELSE NULL END) AS TIER9_FREIGHT_CODE,
                  MAX(CASE WHEN TIER_IDX = 9 THEN HANDLING ELSE NULL END) AS TIER9_HANDLING,
                  MAX(CASE WHEN TIER_IDX = 9 THEN PAYMENT_CODE ELSE NULL END) AS TIER9_PAYMENT_CODE,
                  MAX(CASE WHEN TIER_IDX = 9 THEN SURCHARGE ELSE NULL END) AS TIER9_SURCHARGE,
                  MAX(CASE WHEN TIER_IDX = 9 THEN TIER_VOLUME ELSE NULL END) AS TIER9_TIER_VOLUME
             FROM MN_PG_PRODUCT_PRICING_FACT_VW
            WHERE TIER_IDX BETWEEN 2 AND 9
            GROUP BY PG_WID
      ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

    dimension: pg_wid {
      type: number
      sql: ${TABLE}.PG_WID ;;
    }

    dimension: tier2_adjustment_low {
      type: string
      sql: ${TABLE}.TIER2_ADJUSTMENT_LOW ;;
    }

    dimension: tier2_adjustment {
      type: string
      sql: ${TABLE}.TIER2_ADJUSTMENT ;;
    }

    dimension: tier2_price {
      type: string
      sql: ${TABLE}.TIER2_PRICE ;;
    }

    dimension: tier2_effective_adjust {
      type: string
      sql: ${TABLE}.TIER2_EFFECTIVE_ADJUST ;;
    }

    dimension: tier2_freight_code {
      type: string
      sql: ${TABLE}.TIER2_FREIGHT_CODE ;;
    }

    dimension: tier2_handling {
      type: string
      sql: ${TABLE}.TIER2_HANDLING ;;
    }

    dimension: tier2_payment_code {
      type: string
      sql: ${TABLE}.TIER2_PAYMENT_CODE ;;
    }

    dimension: tier2_surcharge {
      type: string
      sql: ${TABLE}.TIER2_SURCHARGE ;;
    }

    dimension: tier2_tier_volume {
      type: string
      sql: ${TABLE}.TIER2_TIER_VOLUME ;;
    }

    dimension: tier3_adjustment_low {
      type: string
      sql: ${TABLE}.TIER3_ADJUSTMENT_LOW ;;
    }

    dimension: tier3_adjustment {
      type: string
      sql: ${TABLE}.TIER3_ADJUSTMENT ;;
    }

    dimension: tier3_price {
      type: string
      sql: ${TABLE}.TIER3_PRICE ;;
    }

    dimension: tier3_effective_adjust {
      type: string
      sql: ${TABLE}.TIER3_EFFECTIVE_ADJUST ;;
    }

    dimension: tier3_freight_code {
      type: string
      sql: ${TABLE}.TIER3_FREIGHT_CODE ;;
    }

    dimension: tier3_handling {
      type: string
      sql: ${TABLE}.TIER3_HANDLING ;;
    }

    dimension: tier3_payment_code {
      type: string
      sql: ${TABLE}.TIER3_PAYMENT_CODE ;;
    }

    dimension: tier3_surcharge {
      type: string
      sql: ${TABLE}.TIER3_SURCHARGE ;;
    }

    dimension: tier3_tier_volume {
      type: string
      sql: ${TABLE}.TIER3_TIER_VOLUME ;;
    }

    dimension: tier4_adjustment_low {
      type: string
      sql: ${TABLE}.TIER4_ADJUSTMENT_LOW ;;
    }

    dimension: tier4_adjustment {
      type: string
      sql: ${TABLE}.TIER4_ADJUSTMENT ;;
    }

    dimension: tier4_price {
      type: string
      sql: ${TABLE}.TIER4_PRICE ;;
    }

    dimension: tier4_effective_adjust {
      type: string
      sql: ${TABLE}.TIER4_EFFECTIVE_ADJUST ;;
    }

    dimension: tier4_freight_code {
      type: string
      sql: ${TABLE}.TIER4_FREIGHT_CODE ;;
    }

    dimension: tier4_handling {
      type: string
      sql: ${TABLE}.TIER4_HANDLING ;;
    }

    dimension: tier4_payment_code {
      type: string
      sql: ${TABLE}.TIER4_PAYMENT_CODE ;;
    }

    dimension: tier4_surcharge {
      type: string
      sql: ${TABLE}.TIER4_SURCHARGE ;;
    }

    dimension: tier4_tier_volume {
      type: string
      sql: ${TABLE}.TIER4_TIER_VOLUME ;;
    }

    dimension: tier5_adjustment_low {
      type: string
      sql: ${TABLE}.TIER5_ADJUSTMENT_LOW ;;
    }

    dimension: tier5_adjustment {
      type: string
      sql: ${TABLE}.TIER5_ADJUSTMENT ;;
    }

    dimension: tier5_price {
      type: string
      sql: ${TABLE}.TIER5_PRICE ;;
    }

    dimension: tier5_effective_adjust {
      type: string
      sql: ${TABLE}.TIER5_EFFECTIVE_ADJUST ;;
    }

    dimension: tier5_freight_code {
      type: string
      sql: ${TABLE}.TIER5_FREIGHT_CODE ;;
    }

    dimension: tier5_handling {
      type: string
      sql: ${TABLE}.TIER5_HANDLING ;;
    }

    dimension: tier5_payment_code {
      type: string
      sql: ${TABLE}.TIER5_PAYMENT_CODE ;;
    }

    dimension: tier5_surcharge {
      type: string
      sql: ${TABLE}.TIER5_SURCHARGE ;;
    }

    dimension: tier5_tier_volume {
      type: string
      sql: ${TABLE}.TIER5_TIER_VOLUME ;;
    }

    dimension: tier6_adjustment_low {
      type: string
      sql: ${TABLE}.TIER6_ADJUSTMENT_LOW ;;
    }

    dimension: tier6_adjustment {
      type: string
      sql: ${TABLE}.TIER6_ADJUSTMENT ;;
    }

    dimension: tier6_price {
      type: string
      sql: ${TABLE}.TIER6_PRICE ;;
    }

    dimension: tier6_effective_adjust {
      type: string
      sql: ${TABLE}.TIER6_EFFECTIVE_ADJUST ;;
    }

    dimension: tier6_freight_code {
      type: string
      sql: ${TABLE}.TIER6_FREIGHT_CODE ;;
    }

    dimension: tier6_handling {
      type: string
      sql: ${TABLE}.TIER6_HANDLING ;;
    }

    dimension: tier6_payment_code {
      type: string
      sql: ${TABLE}.TIER6_PAYMENT_CODE ;;
    }

    dimension: tier6_surcharge {
      type: string
      sql: ${TABLE}.TIER6_SURCHARGE ;;
    }

    dimension: tier6_tier_volume {
      type: string
      sql: ${TABLE}.TIER6_TIER_VOLUME ;;
    }

    dimension: tier7_adjustment_low {
      type: string
      sql: ${TABLE}.TIER7_ADJUSTMENT_LOW ;;
    }

    dimension: tier7_adjustment {
      type: string
      sql: ${TABLE}.TIER7_ADJUSTMENT ;;
    }

    dimension: tier7_price {
      type: string
      sql: ${TABLE}.TIER7_PRICE ;;
    }

    dimension: tier7_effective_adjust {
      type: string
      sql: ${TABLE}.TIER7_EFFECTIVE_ADJUST ;;
    }

    dimension: tier7_freight_code {
      type: string
      sql: ${TABLE}.TIER7_FREIGHT_CODE ;;
    }

    dimension: tier7_handling {
      type: string
      sql: ${TABLE}.TIER7_HANDLING ;;
    }

    dimension: tier7_payment_code {
      type: string
      sql: ${TABLE}.TIER7_PAYMENT_CODE ;;
    }

    dimension: tier7_surcharge {
      type: string
      sql: ${TABLE}.TIER7_SURCHARGE ;;
    }

    dimension: tier7_tier_volume {
      type: string
      sql: ${TABLE}.TIER7_TIER_VOLUME ;;
    }

    dimension: tier8_adjustment_low {
      type: string
      sql: ${TABLE}.TIER8_ADJUSTMENT_LOW ;;
    }

    dimension: tier8_adjustment {
      type: string
      sql: ${TABLE}.TIER8_ADJUSTMENT ;;
    }

    dimension: tier8_price {
      type: string
      sql: ${TABLE}.TIER8_PRICE ;;
    }

    dimension: tier8_effective_adjust {
      type: string
      sql: ${TABLE}.TIER8_EFFECTIVE_ADJUST ;;
    }

    dimension: tier8_freight_code {
      type: string
      sql: ${TABLE}.TIER8_FREIGHT_CODE ;;
    }

    dimension: tier8_handling {
      type: string
      sql: ${TABLE}.TIER8_HANDLING ;;
    }

    dimension: tier8_payment_code {
      type: string
      sql: ${TABLE}.TIER8_PAYMENT_CODE ;;
    }

    dimension: tier8_surcharge {
      type: string
      sql: ${TABLE}.TIER8_SURCHARGE ;;
    }

    dimension: tier8_tier_volume {
      type: string
      sql: ${TABLE}.TIER8_TIER_VOLUME ;;
    }

    dimension: tier9_adjustment_low {
      type: string
      sql: ${TABLE}.TIER9_ADJUSTMENT_LOW ;;
    }

    dimension: tier9_adjustment {
      type: string
      sql: ${TABLE}.TIER9_ADJUSTMENT ;;
    }

    dimension: tier9_price {
      type: string
      sql: ${TABLE}.TIER9_PRICE ;;
    }

    dimension: tier9_effective_adjust {
      type: string
      sql: ${TABLE}.TIER9_EFFECTIVE_ADJUST ;;
    }

    dimension: tier9_freight_code {
      type: string
      sql: ${TABLE}.TIER9_FREIGHT_CODE ;;
    }

    dimension: tier9_handling {
      type: string
      sql: ${TABLE}.TIER9_HANDLING ;;
    }

    dimension: tier9_payment_code {
      type: string
      sql: ${TABLE}.TIER9_PAYMENT_CODE ;;
    }

    dimension: tier9_surcharge {
      type: string
      sql: ${TABLE}.TIER9_SURCHARGE ;;
    }

    dimension: tier9_tier_volume {
      type: string
      sql: ${TABLE}.TIER9_TIER_VOLUME ;;
    }

    set: detail {
      fields: [
        pg_wid,
        tier2_adjustment_low,
        tier2_adjustment,
        tier2_price,
        tier2_effective_adjust,
        tier2_freight_code,
        tier2_handling,
        tier2_payment_code,
        tier2_surcharge,
        tier2_tier_volume,
        tier3_adjustment_low,
        tier3_adjustment,
        tier3_price,
        tier3_effective_adjust,
        tier3_freight_code,
        tier3_handling,
        tier3_payment_code,
        tier3_surcharge,
        tier3_tier_volume,
        tier4_adjustment_low,
        tier4_adjustment,
        tier4_price,
        tier4_effective_adjust,
        tier4_freight_code,
        tier4_handling,
        tier4_payment_code,
        tier4_surcharge,
        tier4_tier_volume,
        tier5_adjustment_low,
        tier5_adjustment,
        tier5_price,
        tier5_effective_adjust,
        tier5_freight_code,
        tier5_handling,
        tier5_payment_code,
        tier5_surcharge,
        tier5_tier_volume,
        tier6_adjustment_low,
        tier6_adjustment,
        tier6_price,
        tier6_effective_adjust,
        tier6_freight_code,
        tier6_handling,
        tier6_payment_code,
        tier6_surcharge,
        tier6_tier_volume,
        tier7_adjustment_low,
        tier7_adjustment,
        tier7_price,
        tier7_effective_adjust,
        tier7_freight_code,
        tier7_handling,
        tier7_payment_code,
        tier7_surcharge,
        tier7_tier_volume,
        tier8_adjustment_low,
        tier8_adjustment,
        tier8_price,
        tier8_effective_adjust,
        tier8_freight_code,
        tier8_handling,
        tier8_payment_code,
        tier8_surcharge,
        tier8_tier_volume,
        tier9_adjustment_low,
        tier9_adjustment,
        tier9_price,
        tier9_effective_adjust,
        tier9_freight_code,
        tier9_handling,
        tier9_payment_code,
        tier9_surcharge,
        tier9_tier_volume
      ]
    }
  }
