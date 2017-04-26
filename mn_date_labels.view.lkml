view: mn_date_labels {
  derived_table: {
    sql: SELECT TO_CHAR(SYSDATE,'YYYY') AS CURRENT_YEAR,
    TO_CHAR(ADD_MONTHS(SYSDATE,-12),'YYYY') AS PRIOR_YEAR,
    TO_CHAR(ADD_MONTHS(SYSDATE,-24),'YYYY') AS PRIOR_YEAR2,
    TO_CHAR(ADD_MONTHS(SYSDATE,-36),'YYYY') AS PRIOR_YEAR3
    FROM DUAL
       ;;
  }

  dimension: current_year {
    type: string
    label: "Current Year"
    sql: ${TABLE}.CURRENT_YEAR ;;
  }

  dimension: prior_year {
    type: string
    label: "Prior Year 2"
    sql: ${TABLE}.PRIOR_YEAR ;;
  }

  dimension: prior_year2 {
    type: string
    label: "Prior Year 2"
    sql: ${TABLE}.PRIOR_YEAR2 ;;
  }

  dimension: prior_year3 {
    type: string
    label: "Prior Year3"
    sql: ${TABLE}.PRIOR_YEAR3 ;;
  }

}
