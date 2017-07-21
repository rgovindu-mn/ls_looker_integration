view: mn_pg_qual_ben_unflat {
  derived_table: {
    sql:
      -- Unpivoted MN_PG_QUAL_BEN_DIM_VW only for non-SD based TB
-- Non-SD TB
SELECT
PG_TB_WID || TIER_IDX || TO_CHAR(EFF_START_DATE,'YYYYMMDD') as PG_TB_TIER_WID,
PG_TB_WID,
cast(TIER_IDX as number(10)) as TIER_IDX,
TIER_VALUE,
SOURCE_SYSTEM_ID,
DATE_CREATED,
DATE_UPDATED,
NAME,
COMPONENT_TYPE,
COMPONENT_NAME,
STRATEGY_BASED_FLAG,
EFF_START_DATE,
EFF_END_DATE,
SRC_SYS_COMPONENT_ID,
IS_QUAL_COMP_FLAG,
IS_MB_COMPONENT,
SRC_SYS_DATE_UPDATED,
CALC_OBJ_TYPE,
MODULE_TYPE,
CALC_LEVEL,
USE_STRAT_FILTER_FLAG,
SALE_LINE_TYPE,
PG_WID,
BASIS_TYPE,
null AS UNITS,
null AS UOM,
BASIS_DESC,
SEPARATE_TB_PROD_FLAG,
BASIS_UNIT,
SRC_SYS_TB_ID,
ORDER_INDEX,
NUM_TIERS,
VER_NUM,
END_VER_NUM,
VER_START_DATE,
VER_END_DATE,
RUN_ID,
CASE WHEN BASIS_TYPE  in
      (
            'Free Good Revenue Across Order',
            'Revenue by Price Program',
            'Free Goods Revenue Capitation' ,
            'Step Revenue'
      ) THEN 'Revenue'
    ELSE
      (
        CASE WHEN BASIS_TYPE in
          (
            'Volume by Price Program',
            'Quantity In Tier Basis',
            'Quantity By Line Item',
            'Free Goods Volume Across Order',
            'Recurring Volume',
            'Free Goods volume Capitation',
            'Step Volume',
            'Volume by line item'
          ) THEN 'Volume' ELSE null end
        ) END AS COMPONENT_TYPE_FLAG

FROM MN_PG_QUAL_BEN_DIM_VW
UNPIVOT EXCLUDE NULLS
 ( tier_value for (tier_idx) in
  (
    TIER1_VALUE as '1',
    TIER2_VALUE as '2',
    TIER3_VALUE as '3',
    TIER4_VALUE as '4',
    TIER5_VALUE as '5',
    TIER6_VALUE as '6',
    TIER7_VALUE as '7',
    TIER8_VALUE as '8',
    TIER9_VALUE as '9'
  )
 )
where STRATEGY_BASED_FLAG = 'N'

UNION

-- SD based TB
SELECT
PGQSD.PG_TB_WID || PGQSD.TIER_IDX || TO_CHAR(PGQSD.EFF_START_DATE,'YYYYMMDD') as PG_TB_TIER_WID,
PGQSD.PG_TB_WID,
PGQSD.TIER_IDX,
cast(PGQSD.TIER_VALUE as number(23,8)) AS TIER_VALUE,
PGQSD.SOURCE_SYSTEM_ID,
PGQSD.DATE_UPDATED,
PGQSD.DATE_CREATED,
PGQSD.SPREADSHEET_NAME as NAME,
COMPONENT_TYPE,
COMPONENT_NAME,
STRATEGY_BASED_FLAG,
PGQSD.EFF_START_DATE,
PGQSD.EFF_END_DATE,
PGQB.SRC_SYS_COMPONENT_ID,
PGQB.IS_QUAL_COMP_FLAG,
PGQB.IS_MB_COMPONENT,
PGQB.SRC_SYS_DATE_UPDATED,
PGQB.CALC_OBJ_TYPE,
PGQB.MODULE_TYPE,
PGQB.CALC_LEVEL,
PGQB.USE_STRAT_FILTER_FLAG,
PGQB.SALE_LINE_TYPE,
PGQB.PG_WID,
NVL(PGQB.BASIS_TYPE, ta.BASIS_TYPE) AS BASIS_TYPE,
ta.UNITS,
ta.UOM,
PGQB.BASIS_DESC,
PGQB.SEPARATE_TB_PROD_FLAG,
NVL(PGQB.BASIS_UNIT, PGQSD.BASIS_UNIT) AS BASIS_UNIT,
PGQB.SRC_SYS_TB_ID,
PGQB.ORDER_INDEX,
PGQB.NUM_TIERS,
PGQSD.VER_NUM,
PGQSD.END_VER_NUM,
PGQSD.VER_START_DATE,
PGQSD.VER_END_DATE,
PGQSD.RUN_ID,
CASE WHEN NVL(PGQB.BASIS_TYPE, ta.BASIS_TYPE) in
      (
            'Free Good Revenue Across Order',
            'Revenue by Price Program',
            'Free Goods Revenue Capitation' ,
            'Step Revenue'
      ) THEN 'Revenue'
    ELSE
      (
        CASE WHEN NVL(PGQB.BASIS_TYPE, ta.BASIS_TYPE) in
          (
            'Volume by Price Program',
            'Quantity In Tier Basis',
            'Quantity By Line Item',
            'Free Goods Volume Across Order',
            'Recurring Volume',
            'Free Goods volume Capitation',
            'Step Volume',
            'Volume by line item'
          ) THEN 'Volume' ELSE null end
        ) END AS COMPONENT_TYPE_FLAG
FROM MN_PG_QUAL_BEN_SD_RPT_VW PGQSD
JOIN MN_PG_QUAL_BEN_DIM_VW PGQB ON PGQSD.PG_TB_WID=PGQB.PG_TB_WID
                                    AND PGQB.IS_QUAL_COMP_FLAG='Y'
                                    AND PGQSD.SPREADSHEET_TYPE <> 'GENERIC'
                                    AND PGQSD.TIER_FLAG ='Y'
                                    AND PGQB.STRATEGY_BASED_FLAG = 'Y'
-- need below join to get correct Basis Type, Units and UOM from Spreadsheet header level
JOIN MN_PG_QUAL_BEN_SD_RPT_VW ta ON PGQSD.PG_TB_WID = ta.PG_TB_WID
                                    AND ta.TIER_FLAG ='N' AND ta.SPREADSHEET_TYPE <> 'GENERIC'
                                    AND ta.SPREADSHEET_NAME IS NULL

    ;;

  }

  dimension: pg_tb_tier_wid {
    type: string
    primary_key: yes
    sql: ${TABLE}.PG_TB_TIER_WID ;;
  }

  dimension: basis_desc {
    type: string
    sql: ${TABLE}.BASIS_DESC ;;
  }

  dimension: basis_type {
    type: string
    sql: ${TABLE}.BASIS_TYPE ;;
  }

  dimension: basis_unit {
    type: string
    sql: ${TABLE}.BASIS_UNIT ;;
  }

  dimension: calc_level {
    type: string
    sql: ${TABLE}.CALC_LEVEL ;;
  }

  dimension: calc_obj_type {
    type: string
    sql: ${TABLE}.CALC_OBJ_TYPE ;;
  }

  dimension: component_name {
    type: string
    sql: ${TABLE}.COMPONENT_NAME ;;
  }

  dimension: component_type {
    type: string
    sql: ${TABLE}.COMPONENT_TYPE ;;
  }

  dimension: component_type_flag {
    type: string
    sql: ${TABLE}.COMPONENT_TYPE_FLAG ;;
  }

  dimension_group: date_created {
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

  dimension: end_ver_num {
    type: string
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: is_mb_component {
    type: string
    sql: ${TABLE}.IS_MB_COMPONENT ;;
  }

  dimension: is_qual_comp_flag {
    type: string
    sql: ${TABLE}.IS_QUAL_COMP_FLAG ;;
  }

  dimension: module_type {
    type: string
    sql: ${TABLE}.MODULE_TYPE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: num_tiers {
    type: string
    sql: ${TABLE}.NUM_TIERS ;;
  }

  dimension: order_index {
    type: string
    sql: ${TABLE}.ORDER_INDEX ;;
  }



  dimension: pg_tb_wid {
    type: string
    sql: ${TABLE}.PG_TB_WID ;;
  }

  dimension: pg_wid {
    type: string
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: sale_line_type {
    type: string
    sql: ${TABLE}.SALE_LINE_TYPE ;;
  }

  dimension: separate_tb_prod_flag {
    type: string
    sql: ${TABLE}.SEPARATE_TB_PROD_FLAG ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_component_id {
    type: string
    sql: ${TABLE}.SRC_SYS_COMPONENT_ID ;;
  }

  dimension_group: src_sys_date_updated {
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

  dimension: src_sys_tb_id {
    type: string
    sql: ${TABLE}.SRC_SYS_TB_ID ;;
  }

  dimension: strategy_based_flag {
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: tier_idx {
    type: string
    sql: ${TABLE}.TIER_IDX ;;
  }

  dimension: tier_value {
    type: number
    sql: ${TABLE}.TIER_VALUE ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.UNITS ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}.UOM ;;
  }

  dimension: use_strat_filter_flag {
    type: string
    sql: ${TABLE}.USE_STRAT_FILTER_FLAG ;;
  }

  dimension_group: ver_end {
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
    type: string
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension_group: ver_start {
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

# Measures
  measure: count {
    type: count
    drill_fields: [name, component_name]
  }

  measure: expected_qty_value_volume {
    type: sum
    sql:
    case when ${component_type_flag} = 'Volume'
      then ${tier_value}
    end

    ;;
  }

  measure: expected_qty_value_revenue {
    type: sum
    sql:
    case when ${component_type_flag} = 'Revenue'
      then ${tier_value}
    end

    ;;
  }

}
