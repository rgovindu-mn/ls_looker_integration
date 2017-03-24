view: mn_user_dim {
  sql_table_name: LSETLDM.MN_USER_DIM ;;

  dimension: address_line1 {
    type: string
    sql: ${TABLE}.ADDRESS_LINE1 ;;
  }

  dimension: address_line2 {
    type: string
    sql: ${TABLE}.ADDRESS_LINE2 ;;
  }

  dimension: address_line3 {
    type: string
    sql: ${TABLE}.ADDRESS_LINE3 ;;
  }

  dimension: address_line4 {
    type: string
    sql: ${TABLE}.ADDRESS_LINE4 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.COUNTRY ;;
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

  dimension: external_segment {
    type: string
    sql: ${TABLE}.EXTERNAL_SEGMENT ;;
  }

  dimension: fname {
    type: string
    sql: ${TABLE}.FNAME ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FNAME ||' '||${TABLE}.LNAME;;
  }


  dimension: lname {
    type: string
    sql: ${TABLE}.LNAME ;;
  }

  dimension: member_name {
    type: string
    sql: ${TABLE}.MEMBER_NAME ;;
  }

  dimension: postal_zip {
    type: string
    sql: ${TABLE}.POSTAL_ZIP ;;
  }

  dimension: pwd {
    type: string
    sql: ${TABLE}.PWD ;;
  }

  dimension_group: pwd_exp {
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
    sql: ${TABLE}.PWD_EXP_DATE ;;
  }

  dimension: run_id {
    type: string
    hidden:  yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}.SALUTATION ;;
  }

  dimension: source_system_id {
    type: string
    hidden:  yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_user_id {
    type: string
    hidden:  yes
    sql: ${TABLE}.SRC_SYS_USER_ID ;;
  }

  dimension: state_prov {
    type: string
    sql: ${TABLE}.STATE_PROV ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  dimension: user_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.USER_WID ;;
  }

  measure: count {
    type: count
    drill_fields: [fname, member_name, lname]
  }
}
