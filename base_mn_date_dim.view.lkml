view: mn_date_dim {
  sql_table_name: MN_DATE_DIM_VW ;;

  dimension: alt_calendar_type {
    type: string
    sql: ${TABLE}.ALT_CALENDAR_TYPE ;;
  }

  dimension: alt_half_year {
    type: string
    sql: ${TABLE}.ALT_HALF_YEAR ;;
  }

  dimension: alt_month_of_year {
    type: string
    sql: ${TABLE}.ALT_MONTH_OF_YEAR ;;
  }

  dimension: alt_quarter {
    type: string
    sql: ${TABLE}.ALT_QUARTER ;;
  }

  dimension: alt_week_of_year {
    type: string
    sql: ${TABLE}.ALT_WEEK_OF_YEAR ;;
  }

  dimension: alt_year {
    type: string
    sql: ${TABLE}.ALT_YEAR ;;
  }

  dimension: alt_year_half_year {
    type: string
    sql: ${TABLE}.ALT_YEAR_HALF_YEAR ;;
  }

  dimension: alt_year_month {
    type: string
    sql: ${TABLE}.ALT_YEAR_MONTH ;;
  }

  dimension: alt_year_quarter {
    type: string
    sql: ${TABLE}.ALT_YEAR_QUARTER ;;
  }

  dimension_group: assumed_time_sql {
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
    sql: ${TABLE}.ASSUMED_TIME_SQL ;;
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

  dimension: date_dim_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.DATE_DIM_WID ;;
  }

  dimension: date_num {
    type: string
    sql: ${TABLE}.DATE_NUM ;;
  }

  dimension: rolling_12_months {
    type: yesno
    sql: ADD_MONTHS(${TABLE}.DATE_SQL, 12) > SYSDATE;;
  }

  dimension_group: date_sql {
    type: time
    label: ""
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_SQL ;;
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

  dimension: day_num {
    type: string
    sql: ${TABLE}.DAY_NUM ;;
  }

  dimension: day_of_alt_month {
    type: string
    sql: ${TABLE}.DAY_OF_ALT_MONTH ;;
  }

  dimension: day_of_alt_year {
    type: string
    sql: ${TABLE}.DAY_OF_ALT_YEAR ;;
  }

  dimension: day_of_fiscal_month {
    type: string
    sql: ${TABLE}.DAY_OF_FISCAL_MONTH ;;
  }

  dimension: day_of_fiscal_year {
    type: string
    sql: ${TABLE}.DAY_OF_FISCAL_YEAR ;;
  }

  dimension: day_of_month {
    type: string
    sql: ${TABLE}.DAY_OF_MONTH ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.DAY_OF_WEEK ;;
  }

  dimension: day_of_week_in_month {
    type: string
    sql: ${TABLE}.DAY_OF_WEEK_IN_MONTH ;;
  }

  dimension: day_of_week_name {
    type: string
    sql: ${TABLE}.DAY_OF_WEEK_NAME ;;
  }

  dimension: day_of_year {
    type: string
    sql: ${TABLE}.DAY_OF_YEAR ;;
  }

  dimension: fiscal_half_year {
    type: string
    sql: ${TABLE}.FISCAL_HALF_YEAR ;;
  }

  dimension: fiscal_month_num {
    type: string
    sql: ${TABLE}.FISCAL_MONTH_NUM ;;
  }

  dimension: fiscal_month_of_year {
    type: string
    sql: ${TABLE}.FISCAL_MONTH_OF_YEAR ;;
  }

  dimension: fiscal_quarter {
    type: string
    sql: ${TABLE}.FISCAL_QUARTER ;;
  }

  dimension: fiscal_week_num {
    type: string
    sql: ${TABLE}.FISCAL_WEEK_NUM ;;
  }

  dimension: fiscal_week_of_year {
    type: string
    sql: ${TABLE}.FISCAL_WEEK_OF_YEAR ;;
  }

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.FISCAL_YEAR ;;
  }

  dimension: fiscal_year_half_year {
    type: string
    sql: ${TABLE}.FISCAL_YEAR_HALF_YEAR ;;
  }

  dimension: fiscal_year_month {
    type: string
    sql: ${TABLE}.FISCAL_YEAR_MONTH ;;
  }

  dimension: fiscal_year_quarter {
    type: string
    sql: ${TABLE}.FISCAL_YEAR_QUARTER ;;
  }

  dimension: full_date {
    type: string
    sql: ${TABLE}.FULL_DATE ;;
  }

  dimension: half_year {
    type: string
    sql: ${TABLE}.HALF_YEAR ;;
  }

  dimension: last_day_of_alt_month {
    type: string
    sql: ${TABLE}.LAST_DAY_OF_ALT_MONTH ;;
  }

  dimension: last_day_of_fiscal_month {
    type: string
    sql: ${TABLE}.LAST_DAY_OF_FISCAL_MONTH ;;
  }

  dimension: last_day_of_month {
    type: string
    sql: ${TABLE}.LAST_DAY_OF_MONTH ;;
  }

  dimension: last_day_of_week {
    type: string
    sql: ${TABLE}.LAST_DAY_OF_WEEK ;;
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

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: realm_num {
    type: string
    sql: ${TABLE}.REALM_NUM ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: short_date_mdy {
    type: string
    sql: ${TABLE}.SHORT_DATE_MDY ;;
  }

  dimension: short_date_ymd {
    type: string
    sql: ${TABLE}.SHORT_DATE_YMD ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_date_dim_id {
    type: string
    sql: ${TABLE}.SRC_SYS_DATE_DIM_ID ;;
  }

  dimension: week_num {
    type: string
    sql: ${TABLE}.WEEK_NUM ;;
  }

  dimension: week_of_month {
    type: string
    sql: ${TABLE}.WEEK_OF_MONTH ;;
  }

  dimension: week_of_year {
    type: string
    sql: ${TABLE}.WEEK_OF_YEAR ;;
  }

  dimension: weekday_indicator {
    type: string
    sql: ${TABLE}.WEEKDAY_INDICATOR ;;
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
    drill_fields: [day_of_week_name, month_name]
  }
}
