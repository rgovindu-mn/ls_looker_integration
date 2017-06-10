view: mn_product_map_all_vers {
  derived_table: {
    sql: SELECT
        AV.LEVEL0_PROD_WID
        ,P_L0.PRODUCT_NAME P_L0_PRODUCT_NAME
        ,P_L0.PRODUCT_NUM P_L0_PRODUCT_NUM
        ,LEVEL0_PROD_START_DT_WID
        ,DS_L0.DATE_SQL P_L0_START_DATE
        ,DE_L0.DATE_SQL P_L0_END_DATE
        ,LEVEL0_PROD_END_DT_WID
        ,AV.LEVEL1_PROD_WID
        ,P_L1.PRODUCT_NAME P_L1_PRODUCT_NAME
        ,P_L1.PRODUCT_NUM P_L1_PRODUCT_NUM
        ,LEVEL1_PROD_START_DT_WID
        ,DS_L1.DATE_SQL P_L1_START_DATE
        ,DE_L1.DATE_SQL P_L1_END_DATE
        ,LEVEL1_PROD_END_DT_WID
        ,AV.LEVEL2_PROD_WID
        ,P_L2.PRODUCT_NAME P_L2_PRODUCT_NAME
        ,P_L2.PRODUCT_NUM P_L2_PRODUCT_NUM
        ,LEVEL2_PROD_START_DT_WID
        ,DS_L2.DATE_SQL P_L2_START_DATE
        ,DE_L2.DATE_SQL P_L2_END_DATE
        ,LEVEL2_PROD_END_DT_WID
        ,AV.LEVEL3_PROD_WID
        ,P_L3.PRODUCT_NAME P_L3_PRODUCT_NAME
        ,P_L3.PRODUCT_NUM P_L3_PRODUCT_NUM
        ,LEVEL3_PROD_START_DT_WID
        ,DS_L3.DATE_SQL P_L3_START_DATE
        ,DE_L3.DATE_SQL P_L3_END_DATE
        ,LEVEL3_PROD_END_DT_WID
        ,AV.LEVEL4_PROD_WID
        ,P_L4.PRODUCT_NAME P_L4_PRODUCT_NAME
        ,P_L4.PRODUCT_NUM P_L4_PRODUCT_NUM
        ,LEVEL4_PROD_START_DT_WID
        ,DS_L4.DATE_SQL P_L4_START_DATE
        ,DE_L4.DATE_SQL P_L4_END_DATE
        ,LEVEL4_PROD_END_DT_WID
        ,AV.LEVEL5_PROD_WID
        ,P_L5.PRODUCT_NAME P_L5_PRODUCT_NAME
        ,P_L5.PRODUCT_NUM P_L5_PRODUCT_NUM
        ,LEVEL5_PROD_START_DT_WID
        ,DS_L5.DATE_SQL P_L5_START_DATE
        ,DE_L5.DATE_SQL P_L5_END_DATE
        ,LEVEL5_PROD_END_DT_WID
        ,AV.LEVEL6_PROD_WID
        ,P_L6.PRODUCT_NAME P_L6_PRODUCT_NAME
        ,P_L6.PRODUCT_NUM P_L6_PRODUCT_NUM
        ,LEVEL6_PROD_START_DT_WID
        ,DS_L6.DATE_SQL P_L6_START_DATE
        ,DE_L6.DATE_SQL P_L6_END_DATE
        ,LEVEL6_PROD_END_DT_WID
        ,AV.LEVEL7_PROD_WID
        ,P_L7.PRODUCT_NAME P_L7_PRODUCT_NAME
        ,P_L7.PRODUCT_NUM P_L7_PRODUCT_NUM
        ,LEVEL7_PROD_START_DT_WID
        ,DS_L7.DATE_SQL P_L7_START_DATE
        ,DE_L7.DATE_SQL P_L7_END_DATE
        ,LEVEL7_PROD_END_DT_WID
        ,AV.LEVEL8_PROD_WID
        ,P_L8.PRODUCT_NAME P_L8_PRODUCT_NAME
        ,P_L8.PRODUCT_NUM P_L8_PRODUCT_NUM
        ,LEVEL8_PROD_START_DT_WID
        ,DS_L8.DATE_SQL P_L8_START_DATE
        ,DE_L8.DATE_SQL P_L8_END_DATE
        ,LEVEL8_PROD_END_DT_WID
        ,AV.LEVEL9_PROD_WID
        ,P_L9.PRODUCT_NAME P_L9_PRODUCT_NAME
        ,P_L9.PRODUCT_NUM P_L9_PRODUCT_NUM
        ,LEVEL9_PROD_START_DT_WID
        ,DS_L9.DATE_SQL P_L9_START_DATE
        ,DE_L9.DATE_SQL P_L9_END_DATE
        ,LEVEL9_PROD_END_DT_WID
        ,AV.RUN_ID
        ,AV.SOURCE_SYSTEM_ID
        ,AV.DATE_CREATED
        ,AV.DATE_UPDATED

      FROM
        MN_PRODUCT_MAP_ALL_VERS AV
        LEFT OUTER JOIN MN_PRODUCT_DIM P_L0 ON AV.LEVEL0_PROD_WID = P_L0.PRODUCT_WID
        LEFT OUTER JOIN MN_PRODUCT_DIM P_L1 ON AV.LEVEL1_PROD_WID = P_L1.PRODUCT_WID
        LEFT OUTER JOIN MN_PRODUCT_DIM P_L2 ON AV.LEVEL2_PROD_WID = P_L2.PRODUCT_WID
        LEFT OUTER JOIN MN_PRODUCT_DIM P_L3 ON AV.LEVEL3_PROD_WID = P_L3.PRODUCT_WID
        LEFT OUTER JOIN MN_PRODUCT_DIM P_L4 ON AV.LEVEL4_PROD_WID = P_L4.PRODUCT_WID
        LEFT OUTER JOIN MN_PRODUCT_DIM P_L5 ON AV.LEVEL5_PROD_WID = P_L5.PRODUCT_WID
        LEFT OUTER JOIN MN_PRODUCT_DIM P_L6 ON AV.LEVEL6_PROD_WID = P_L6.PRODUCT_WID
        LEFT OUTER JOIN MN_PRODUCT_DIM P_L7 ON AV.LEVEL7_PROD_WID = P_L7.PRODUCT_WID
        LEFT OUTER JOIN MN_PRODUCT_DIM P_L8 ON AV.LEVEL8_PROD_WID = P_L8.PRODUCT_WID
        LEFT OUTER JOIN MN_PRODUCT_DIM P_L9 ON AV.LEVEL9_PROD_WID = P_L9.PRODUCT_WID

        LEFT OUTER JOIN MN_DATE_DIM DS_L0 ON AV.LEVEL0_PROD_START_DT_WID = DS_L0.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DS_L1 ON AV.LEVEL1_PROD_START_DT_WID = DS_L1.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DS_L2 ON AV.LEVEL2_PROD_START_DT_WID = DS_L2.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DS_L3 ON AV.LEVEL3_PROD_START_DT_WID = DS_L3.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DS_L4 ON AV.LEVEL4_PROD_START_DT_WID = DS_L4.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DS_L5 ON AV.LEVEL5_PROD_START_DT_WID = DS_L5.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DS_L6 ON AV.LEVEL6_PROD_START_DT_WID = DS_L6.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DS_L7 ON AV.LEVEL7_PROD_START_DT_WID = DS_L7.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DS_L8 ON AV.LEVEL8_PROD_START_DT_WID = DS_L8.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DS_L9 ON AV.LEVEL9_PROD_START_DT_WID = DS_L9.DATE_DIM_WID

        LEFT OUTER JOIN MN_DATE_DIM DE_L0 ON AV.LEVEL0_PROD_START_DT_WID = DE_L0.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DE_L1 ON AV.LEVEL1_PROD_START_DT_WID = DE_L1.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DE_L2 ON AV.LEVEL2_PROD_START_DT_WID = DE_L2.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DE_L3 ON AV.LEVEL3_PROD_START_DT_WID = DE_L3.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DE_L4 ON AV.LEVEL4_PROD_START_DT_WID = DE_L4.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DE_L5 ON AV.LEVEL5_PROD_START_DT_WID = DE_L5.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DE_L6 ON AV.LEVEL6_PROD_START_DT_WID = DE_L6.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DE_L7 ON AV.LEVEL7_PROD_START_DT_WID = DE_L7.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DE_L8 ON AV.LEVEL8_PROD_START_DT_WID = DE_L8.DATE_DIM_WID
        LEFT OUTER JOIN MN_DATE_DIM DE_L9 ON AV.LEVEL9_PROD_START_DT_WID = DE_L9.DATE_DIM_WID
       ;;
  }

  measure: count {
    type: count
    drill_fields: [level0_product_wid]
  }

  dimension: level0_product_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.LEVEL0_PROD_WID ;;
  }

  dimension: level0_product_name {
    type: string
    sql: ${TABLE}.P_L0_PRODUCT_NAME ;;
  }

  dimension: level0_product_num {
    type: string
    sql: ${TABLE}.P_L0_PRODUCT_NUM ;;
  }

  dimension: level0_prod_start_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL0_PROD_START_DT_WID ;;
  }

  dimension_group: level0_product_start_date {
    type: time
    sql: ${TABLE}.P_L0_START_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension_group: level0_product_end_date {
    type: time
    sql: ${TABLE}.P_L0_END_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension: level0_prod_end_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL0_PROD_END_DT_WID ;;
  }

  dimension: level1_prod_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL1_PROD_WID ;;
  }

  dimension: level1_product_name {
    type: string
    sql: ${TABLE}.P_L1_PRODUCT_NAME ;;
  }

  dimension: level1_product_num {
    type: string
    sql: ${TABLE}.P_L1_PRODUCT_NUM ;;
  }

  dimension: level1_prod_start_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL1_PROD_START_DT_WID ;;
  }

  dimension_group: level1_product_start_date {
    type: time
    sql: ${TABLE}.P_L1_START_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension_group: level1_product_end_date {
    type: time
    sql: ${TABLE}.P_L1_END_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension: level1_product_end_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL1_PROD_END_DT_WID ;;
  }

  dimension: level2_product_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL2_PROD_WID ;;
  }

  dimension: level2_product_name {
    type: string
    sql: ${TABLE}.P_L2_PRODUCT_NAME ;;
  }

  dimension: level2_product_num {
    type: string
    sql: ${TABLE}.P_L2_PRODUCT_NUM ;;
  }

  dimension: level2_prod_start_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL2_PROD_START_DT_WID ;;
  }

  dimension_group: level2_product_start_date {
    type: time
    sql: ${TABLE}.P_L2_START_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension_group: level2_product_end_date {
    type: time
    sql: ${TABLE}.P_L2_END_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension: level2_prod_end_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL2_PROD_END_DT_WID ;;
  }

  dimension: level3_prod_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL3_PROD_WID ;;
  }

  dimension: level3_product_name {
    type: string
    sql: ${TABLE}.P_L3_PRODUCT_NAME ;;
  }

  dimension: level3_product_num {
    type: string
    sql: ${TABLE}.P_L3_PRODUCT_NUM ;;
  }

  dimension: level3_prod_start_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL3_PROD_START_DT_WID ;;
  }

  dimension_group: level3_product_start_date {
    type: time
    sql: ${TABLE}.P_L3_START_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension_group: level3_product_end_date {
    type: time
    sql: ${TABLE}.P_L3_END_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension: level3_prod_end_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL3_PROD_END_DT_WID ;;
  }

  dimension: level4_prod_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL4_PROD_WID ;;
  }

  dimension: level4_product_name {
    type: string
    sql: ${TABLE}.P_L4_PRODUCT_NAME ;;
  }

  dimension: level4_product_num {
    type: string
    sql: ${TABLE}.P_L4_PRODUCT_NUM ;;
  }

  dimension: level4_prod_start_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL4_PROD_START_DT_WID ;;
  }

  dimension_group: level4_product_start_date {
    type: time
    sql: ${TABLE}.P_L4_START_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension_group: level4_product_end_date {
    type: time
    sql: ${TABLE}.P_L4_END_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension: level4_prod_end_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL4_PROD_END_DT_WID ;;
  }

  dimension: level5_prod_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL5_PROD_WID ;;
  }

  dimension: level5_product_name {
    type: string
    sql: ${TABLE}.P_L5_PRODUCT_NAME ;;
  }

  dimension: level5_product_num {
    type: string
    sql: ${TABLE}.P_L5_PRODUCT_NUM ;;
  }

  dimension: level5_prod_start_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL5_PROD_START_DT_WID ;;
  }

  dimension_group: level5_product_start_date {
    type: time
    sql: ${TABLE}.P_L5_START_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension_group: level5_product_end_date {
    type: time
    sql: ${TABLE}.P_L5_END_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension: level5_prod_end_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL5_PROD_END_DT_WID ;;
  }

  dimension: level6_prod_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL6_PROD_WID ;;
  }

  dimension: level6_product_name {
    type: string
    sql: ${TABLE}.P_L6_PRODUCT_NAME ;;
  }

  dimension: level6_product_num {
    type: string
    sql: ${TABLE}.P_L6_PRODUCT_NUM ;;
  }

  dimension: level6_prod_start_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL6_PROD_START_DT_WID ;;
  }

  dimension_group: level6_product_start_date {
    type: time
    sql: ${TABLE}.P_L6_START_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension_group: level6_product_end_date {
    type: time
    sql: ${TABLE}.P_L6_END_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension: level6_prod_end_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL6_PROD_END_DT_WID ;;
  }

  dimension: level7_prod_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL7_PROD_WID ;;
  }

  dimension: level7_product_name {
    type: string
    sql: ${TABLE}.P_L7_PRODUCT_NAME ;;
  }

  dimension: level7_product_num {
    type: string
    sql: ${TABLE}.P_L7_PRODUCT_NUM ;;
  }

  dimension: level7_prod_start_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL7_PROD_START_DT_WID ;;
  }

  dimension_group: level7_product_start_date {
    type: time
    sql: ${TABLE}.P_L7_START_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension_group: level7_product_end_date {
    type: time
    sql: ${TABLE}.P_L7_END_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension: level7_prod_end_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL7_PROD_END_DT_WID ;;
  }

  dimension: level8_prod_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL8_PROD_WID ;;
  }

  dimension: level8_product_name {
    type: string
    sql: ${TABLE}.P_L8_PRODUCT_NAME ;;
  }

  dimension: level8_product_num {
    type: string
    sql: ${TABLE}.P_L8_PRODUCT_NUM ;;
  }

  dimension: level8_prod_start_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL8_PROD_START_DT_WID ;;
  }

  dimension_group: level8_product_start_date {
    type: time
    sql: ${TABLE}.P_L8_START_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension_group: level8_product_end_date {
    type: time
    sql: ${TABLE}.P_L8_END_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension: level8_prod_end_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL8_PROD_END_DT_WID ;;
  }

  dimension: level9_prod_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL9_PROD_WID ;;
  }

  dimension: level9_product_name {
    type: string
    sql: ${TABLE}.P_L9_PRODUCT_NAME ;;
  }

  dimension: level9_product_num {
    type: string
    sql: ${TABLE}.P_L9_PRODUCT_NUM ;;
  }

  dimension: level9_prod_start_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL9_PROD_START_DT_WID ;;
  }

  dimension_group: level9_product_start_date {
    type: time
    sql: ${TABLE}.P_L9_START_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension_group: level9_product_end_date {
    type: time
    sql: ${TABLE}.P_L9_END_DATE ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension: level9_prod_end_dt_wid {
    type: string
    hidden:  yes
    sql: ${TABLE}.LEVEL9_PROD_END_DT_WID ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension_group: date_created {
    type: time
    sql: ${TABLE}.DATE_CREATED ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension_group: date_updated {
    type: time
    sql: ${TABLE}.DATE_UPDATED ;;
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

}
