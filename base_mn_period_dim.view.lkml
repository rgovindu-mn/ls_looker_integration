view: mn_period_dim {
  sql_table_name: MN_PERIOD_DIM_VW ;;

  dimension_group: date_created {
    type: time
    hidden:  yes
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

  dimension_group: end_date_sql {
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
    sql: ${TABLE}.END_DATE_SQL ;;
  }

  dimension: half_year {
    type: string
    sql: ${TABLE}.HALF_YEAR ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.MONTH ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}.MONTH_NAME ;;
  }

  dimension: month_num {
    type: string
    sql: ${TABLE}.MONTH_NUM ;;
  }

  dimension: period_wid {
    hidden:  yes
    primary_key: yes
    type: number
    sql: ${TABLE}.PERIOD_WID ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: run_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden:  yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_date_dim_id {
    type: string
    sql: ${TABLE}.SRC_SYS_DATE_DIM_ID ;;
  }

  dimension_group: start_date_sql {
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
    sql: ${TABLE}.START_DATE_SQL ;;
  }

  dimension: period_date {
    type: date
    sql: ${TABLE}.START_DATE_SQL ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  dimension: year_half_year {
    type: string
    sql: ${TABLE}.YEAR_HALF_YEAR ;;
  }

  dimension: year_month {
    type: string
    sql: ${TABLE}.YEAR_MONTH ;;
  }

  dimension: year_quarter {
    type: string
    sql: ${TABLE}.YEAR_QUARTER ;;
  }

  measure: count {
    type: count
    hidden:  yes

    drill_fields: [month_name]
  }
}
