view: mn_formulary_prod_map {
  sql_table_name: MN_FORMULARY_PROD_MAP_VW ;;

  dimension_group: date_created {
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
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
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

  dimension: formulary_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.FORMULARY_WID ;;
  }

  dimension: line_sev {
    type: string
    sql: ${TABLE}.LINE_SEV ;;
  }

  dimension: ndc_lock {
    type: string
    sql: ${TABLE}.NDC_LOCK ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }

  dimension: other_rest {
    type: string
    sql: ${TABLE}.OTHER_REST ;;
  }

  dimension: prior_auth {
    type: string
    sql: ${TABLE}.PRIOR_AUTH ;;
  }

  dimension: product_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: qty_limit {
    type: string
    sql: ${TABLE}.QTY_LIMIT ;;
  }

  dimension: run_id {
    hidden: yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: step_edit {
    type: string
    sql: ${TABLE}.STEP_EDIT ;;
  }

  dimension: tier_num {
    type: string
    sql: ${TABLE}.TIER_NUM ;;
  }

  dimension: tier_on_off {
    type: string
    sql: ${TABLE}.TIER_ON_OFF ;;
  }

#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }

  set: detail {
    fields: [
      line_sev,
      ndc_lock,
      notes,
      other_rest,
      prior_auth,
      qty_limit,
      step_edit,
      tier_num,
      tier_on_off
    ]
  }
}
