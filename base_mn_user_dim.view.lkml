view: mn_user_dim {
  sql_table_name: MN_USER_DIM_VW ;;

  dimension: address_line1 {
    hidden: yes
    type: string
    sql: ${TABLE}.ADDRESS_LINE1 ;;
  }

  dimension: address_line2 {
    hidden: yes
    type: string
    sql: ${TABLE}.ADDRESS_LINE2 ;;
  }

  dimension: address_line3 {
    hidden: yes
    type: string
    sql: ${TABLE}.ADDRESS_LINE3 ;;
  }

  dimension: address_line4 {
    hidden: yes
    type: string
    sql: ${TABLE}.ADDRESS_LINE4 ;;
  }

  dimension: full_address {
    type: string
    label: "Address"
    sql: ${address_line1}||' '||${address_line2}||' '||${address_line3}||' '||${address_line4} ;;
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
    hidden: yes
    type: string
    sql: ${TABLE}.FNAME ;;
  }

  dimension: full_name {
    type: string
    label: "Name"
    sql: ${TABLE}.FNAME ||' '||${TABLE}.LNAME;;
  }

  dimension: lname {
    hidden: yes
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
    hidden: yes
    type: string
    sql: ${TABLE}.PWD ;;
  }

  dimension_group: pwd_exp {
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
    sql: ${TABLE}.PWD_EXP_DATE ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
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
    type: number
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
    primary_key: yes
    type: number
    sql: ${TABLE}.USER_WID ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [fname, member_name, lname]
  }

  set: mn_user_all_visible_fields  {
          fields: [full_address,
                    city,
                    country,
                    external_segment,
                    fname,
                    full_name,
                    lname,
                    member_name,
                    postal_zip,
                    pwd,
                    salutation,
                    state_prov,
                    title,
                    count
            ]
      }
}
