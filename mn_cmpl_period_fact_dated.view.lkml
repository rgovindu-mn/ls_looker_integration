include: "mn_cmpl_period_fact.view.lkml"
view: mn_cmpl_period_fact_dated {
  extends: [mn_cmpl_period_fact]

   dimension: date_period {
    sql:
    CASE
      WHEN {% condition date_frame_selection %} 'Year' {% endcondition %}THEN TO_CHAR(${mn_date_dim.year})
      WHEN {% condition date_frame_selection %} 'Quarter' {% endcondition %}THEN ${mn_date_dim.year_quarter}
      ELSE ${mn_date_dim.year_month}
    END ;;
  }

  dimension: rolling_12_months {
    type: yesno
    sql: ADD_MONTHS(${mn_date_dim.start_date_sql_raw}, 12) > SYSDATE;;
  }

  dimension: total_days_in_period {
    sql:  ROUND(TRUNC(LEAST(CAST(${period_end_raw} AS DATE), SYSDATE),'DD') - TRUNC(LEAST(CAST(${period_start_raw} AS DATE), SYSDATE),'DD') +1) ;;
  }

  dimension: days_in_current_period {
    sql:  ROUND(TRUNC(LEAST(LEAST(CAST(${mn_date_dim.end_date_sql_raw} AS DATE), ${period_end_raw}), SYSDATE) ,'DD')
      - TRUNC(LEAST(GREATEST(CAST(${mn_date_dim.start_date_sql_raw} AS DATE), ${period_start_raw}), SYSDATE),'DD') +1 ) ;;
  }

  measure: period_actual_sales {
    type: sum
    value_format_name: decimal_0
    sql: ${TABLE}.ACTUAL_AMT_TO_DATE  * ${days_in_current_period} /  ${total_days_in_period};;
  }
  measure: period_expected_sales {
    type: sum
    value_format_name: decimal_0
    sql: ${TABLE}.EXPECTED_AMT_TO_DATE * ${days_in_current_period} /  ${total_days_in_period}  ;;
  }

  measure: compliance_percent {
    type: number
    value_format_name: percent_0
    sql: NVL(${period_actual_sales} / NULLIF( ${period_expected_sales},0) ,0) ;;
  }


   filter: date_frame_selection {
    label: "Period Timeframe Selection"
    default_value: "Quarter"
    suggestions: ["Month", "Quarter", "Year"]
  }

}
