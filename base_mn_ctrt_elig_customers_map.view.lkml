view: mn_ctrt_elig_customers_map {

  derived_table: {
    sql: SELECT
       ELIG_CUSTOMER_WID ,
       COMP_ELIG_START_DATE AS ELIG_START_DATE ,
       COMP_ELIG_END_DATE AS ELIG_END_DATE   ,
       COMMIT_CUSTOMER_WID AS COMMIT_CUSTOMER_WID,
       mp.PROGRAM_WID,
       PROGRAM_BEN_WID,
       NULL AS PROGRAM_QUAL_WID,
       NULL AS PG_TIER_BASIS_WID,
       NULL AS PG_WID,
       NULL AS COMMIT_TIER,
       SNAPSHOT_DATE,
       SRC_SYS_CONTRACT_ID,
       'Rebate Program' AS ELIG_PROGRAM_TYPE,
       'Benefit' AS ELIG_COMPONENT_TYPE
      FROM mn_rbt_prg_ben_elg_cst_map_vw mp
      JOIN mn_rebate_program_dim_vw pr ON (mp.program_wid = pr.program_wid)
      UNION
      SELECT
       ELIG_CUSTOMER_WID ,
       ELIG_START_DATE AS ELIG_START_DATE ,
       ELIG_END_DATE AS ELIG_END_DATE   ,
       COMMIT_CUSTOMER_WID AS COMMIT_CUSTOMER_WID,
       NULL AS PROGRAM_WID,
       NULL AS PROGRAM_BEN_WID,
       NULL AS PROGRAM_QUAL_WID,
       NULL AS PG_TIER_BASIS_WID,
       mp.PG_WID,
       COMMIT_TIER,
       SNAPSHOT_DATE,
       SRC_SYS_PK_ID AS SRC_SYS_CONTRACT_ID,
       'Price Program' AS ELIG_PROGRAM_TYPE,
       'Benefit' AS ELIG_COMPONENT_TYPE
      FROM mn_pg_ben_elig_cust_map_vw mp
      JOIN mn_product_group_dim_vw pr ON (mp.pg_wid = pr.pg_wid)
      UNION
      SELECT
      ELIG_CUSTOMER_WID ,
       COMP_ELIG_START_DATE AS ELIG_START_DATE ,
       COMP_ELIG_END_DATE AS ELIG_END_DATE   ,
       COMMIT_CUSTOMER_WID AS COMMIT_CUSTOMER_WID,
       mp.PROGRAM_WID,
       NULL AS PROGRAM_BEN_WID,
       PROGRAM_QUAL_WID,
       NULL AS PG_TIER_BASIS_WID,
       NULL AS PG_WID,
       NULL AS COMMIT_TIER,
       SNAPSHOT_DATE,
       SRC_SYS_CONTRACT_ID,
       'Rebate Program' AS ELIG_PROGRAM_TYPE,
       'Tier Basis' AS ELIG_COMPONENT_TYPE
      FROM mn_rbt_prg_qual_elg_cst_map_vw mp
      JOIN mn_rebate_program_dim_vw pr ON (mp.program_wid = pr.program_wid)
      UNION
      SELECT
       ELIG_CUSTOMER_WID ,
       TB_ELIG_START_DATE AS ELIG_START_DATE ,
       TB_ELIG_END_DATE AS ELIG_END_DATE   ,
       COMMIT_CUSTOMER_WID AS COMMIT_CUSTOMER_WID,
       NULL AS PROGRAM_WID,
       NULL AS PROGRAM_BEN_WID,
       NULL AS PROGRAM_QUAL_WID,
       PG_TIER_BASIS_WID,
       mp.PG_WID,
       COMMIT_TIER,
       SNAPSHOT_DATE,
       SRC_SYS_PK_ID AS SRC_SYS_CONTRACT_ID,
       'Price Program' AS ELIG_PROGRAM_TYPE,
       'Tier Basis' AS ELIG_COMPONENT_TYPE
      FROM mn_pg_qual_elig_cust_map_vw mp
      JOIN mn_product_group_dim_vw pr ON (mp.pg_wid = pr.pg_wid)
      UNION SELECT
       OWNER_WID ELIG_CUSTOMER_WID ,
       EFF_START_DATE AS ELIG_START_DATE ,
       EFF_END_DATE AS ELIG_END_DATE   ,
       NULL AS COMMIT_CUSTOMER_WID,
       NULL AS PROGRAM_WID,
       NULL AS PROGRAM_BEN_WID,
       NULL AS PROGRAM_QUAL_WID,
       NULL AS PG_TIER_BASIS_WID,
       NULL AS PG_WID,
       SRC_SYS_CONTRACT_ID,
       NULL AS COMMIT_TIER,
       NULL AS SNAPSHOT_DATE,
       'Contracted Customer' AS ELIG_PROGRAM_TYPE,
       'Contracted Customer' AS ELIG_COMPONENT_TYPE
      FROM mn_contract_header_dim_vw
       ;;
  }


  dimension: elig_customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ELIG_CUSTOMER_WID ;;
  }

  dimension_group: eligibility_start {
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
    sql: ${TABLE}.ELIG_START_DATE ;;
  }

  dimension_group: eligibility_end {
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
    sql: ${TABLE}.ELIG_END_DATE ;;
  }

  dimension: commit_customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.COMMIT_CUSTOMER_WID ;;
  }

  dimension: program_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: program_ben_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_BEN_WID ;;
  }

  dimension: program_qual_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_QUAL_WID ;;
  }

  dimension: pg_tier_basis_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PG_TIER_BASIS_WID ;;
  }

  dimension: pg_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: pricing_program_commit_tier {
    type: string
    sql: ${TABLE}.COMMIT_TIER ;;
  }

  dimension_group: eligibility_snapshot {
    type: time
    timeframes: [
      raw,
      date
    ]
    sql: ${TABLE}.SNAPSHOT_DATE ;;
  }

  dimension: src_sys_contract_id {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.SRC_SYS_CONTRACT_ID ;;
  }

  dimension: program_type {
    type: string
    sql: ${TABLE}.ELIG_PROGRAM_TYPE ;;
  }

  dimension: component_type {
    type: string
    sql: ${TABLE}.ELIG_COMPONENT_TYPE ;;
  }
}
