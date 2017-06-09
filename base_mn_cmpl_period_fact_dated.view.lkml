include: "base_mn_cmpl_period_fact.view.lkml"
view: mn_cmpl_period_fact_dated {
  extends: [mn_cmpl_period_fact]

   dimension: date_period {
    type:  string
    sql:
    CASE
      WHEN {% condition date_frame_selection %} 'Year' {% endcondition %}THEN TO_CHAR(${mn_date_dim.year})
      WHEN {% condition date_frame_selection %} 'Quarter' {% endcondition %}THEN ${mn_date_dim.year_quarter}
      WHEN {% condition date_frame_selection %} 'Half-Year' {% endcondition %}THEN ${mn_date_dim.year_half_year}
      ELSE ${mn_date_dim.year_month}
    END ;;
  }

  dimension: date_period_days_remaning {
    type:  string
    sql:
    CASE
      WHEN {% condition date_frame_selection %} 'Year' {% endcondition %} AND (${mn_date_dim.end_date_sql_raw} >= trunc(sysdate)) THEN
         ROUND( TRUNC(ADD_MONTHS(SYSDATE,12),'YYYY') - trunc(sysdate))
      WHEN {% condition date_frame_selection %} 'Quarter' {% endcondition %} AND (${mn_date_dim.end_date_sql_raw} >= trunc(sysdate))  THEN
          ROUND( TRUNC(ADD_MONTHS(SYSDATE,3),'Q') - trunc(sysdate))
      WHEN {% condition date_frame_selection %} 'Half-Year' {% endcondition %} AND (${mn_date_dim.end_date_sql_raw} >= trunc(sysdate))  THEN
          ROUND( ADD_MONTHS(TRUNC(SYSDATE,'YYYY'),6) - trunc(sysdate))
      WHEN {% condition date_frame_selection %} 'Month' {% endcondition %} AND (${mn_date_dim.end_date_sql_raw} >= trunc(sysdate) ) THEN
         ROUND( TRUNC(ADD_MONTHS(SYSDATE,1),'MM') - trunc(sysdate))
      ELSE 0
    END ;;
  }

  dimension: rolling_12_months {
    type: yesno
    sql: ADD_MONTHS(${mn_date_dim.start_date_sql_raw}, 12) > SYSDATE;;
  }

  dimension: days_in_current_period {
    type:  string
    sql:  ROUND(TRUNC(LEAST(LEAST(CAST(${mn_date_dim.end_date_sql_raw} AS DATE), ${period_end_raw}), SYSDATE) ,'DD')
      - TRUNC(LEAST(GREATEST(CAST(${mn_date_dim.start_date_sql_raw} AS DATE), ${period_start_raw}), SYSDATE),'DD') +1 ) ;;
  }

  measure: period_actual_sales_proj {
    type: sum
    value_format_name: decimal_0
    sql: ${actual_amt_to_date}  *  (${days_in_current_period} +  ${date_period_days_remaning}) /  ${total_days_in_period};;
  }
  measure: period_expected_sales_proj {
    type: sum
    value_format_name: decimal_0
    sql: ${expected_amt_to_date} *  (${days_in_current_period} +  ${date_period_days_remaning}) /  ${total_days_in_period}  ;;
  }

  measure: period_actual_sales {
    type: sum
    value_format_name: decimal_0
    sql: ${actual_amt_to_date}  * ${days_in_current_period} /  ${total_days_in_period};;
  }
  measure: period_expected_sales {
    type: sum
    value_format_name: decimal_0
    sql: ${expected_amt_to_date} * ${days_in_current_period} /  ${total_days_in_period}  ;;
  }

  # CASE WHEN (${expected_amt_to_date} - ${actual_amt_to_date}) > 0 AND
  #      ${mn_date_dim.end_date_sql_raw} > SYSTIMESTAMP THEN
  #      (${expected_amt_to_date} - ${actual_amt_to_date})/${total_days_in_period}
  # ELSE 0 END;;

  measure: period_total_revenue_gap {
    type: sum
    label: "Total Revenue Gap"
    value_format_name: decimal_0
    sql: CASE WHEN ( ${expected_amt_to_date} -  ${actual_amt_to_date}) > 0 THEN
         (${days_in_current_period} +  ${date_period_days_remaning}) * (${expected_amt_to_date} -  ${actual_amt_to_date})
        /  ${total_days_in_period}
        ELSE 0
        END;;
  }

  measure: period_revenue_gap {
    type: sum
    value_format_name: decimal_0
    sql: CASE WHEN (${expected_amt_to_date} - ${actual_amt_to_date}) > 0 THEN
         (${expected_amt_to_date} -${actual_amt_to_date}) * ${days_in_current_period} /  ${total_days_in_period}
    ELSE 0 END;;
  }

  measure: compliance_percent {
    type: number
    value_format_name: percent_0
    sql: NVL(${period_actual_sales} / NULLIF( ${period_expected_sales},0) ,0) ;;
  }

  measure: period_actual_sales_over_expected {
    type: sum
    value_format_name: decimal_0
    sql: CASE WHEN (${actual_amt_to_date} > ${expected_amt_to_date}) THEN
       ( ${actual_amt_to_date} - ${expected_amt_to_date})  * ${days_in_current_period} /  ${total_days_in_period}
      ELSE
        0
      END;;
  }

 filter: date_frame_selection {
    label: "Period Timeframe Selection"
    default_value: "Quarter"
    suggestions: ["Month", "Quarter", "Half-Year", "Year"]
  }

}
