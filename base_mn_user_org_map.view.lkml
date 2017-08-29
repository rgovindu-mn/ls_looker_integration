view: mn_user_org_map_dt {

  derived_table: {
      sql:SELECT DISTINCT us.member_name AS USER_NAME,
                us.user_wid,
                mp.org_wid
              FROM MN_USER_ORG_MAP_VW mp
             JOIN MN_USER_DIM_VW us
              ON (mp.USER_WID = us.USER_WID)
       ;;
 }
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
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: org_wid {
    type: number
    hidden:  yes

    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: run_id {
    type: number
    hidden:  yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden:  yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.USER_NAME ;;
    label: "Access User Name"
  }

  dimension: user_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.USER_WID ;;
  }

  dimension: access_user_wid {
    hidden: yes
    type: number
    sql: ${user_wid} ;;
    label: "Access User ID"
  }

  dimension: access_user_id {
    hidden: yes
    type: string
    sql: ${user_wid} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
