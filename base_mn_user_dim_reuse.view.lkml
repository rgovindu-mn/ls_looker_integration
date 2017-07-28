view: mn_user_dim_reuse {
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

  dimension: first_name {
    hidden: yes
    type: string
    sql: ${TABLE}.FNAME ;;
  }

  dimension: full_name {
    type: string
    label: "Name"
    sql: ${TABLE}.FNAME ||' '||${TABLE}.LNAME;;
  }

  dimension: last_name {
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
    hidden: yes
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

  dimension: state_province {
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
    drill_fields: [first_name, member_name, last_name]
  }

  dimension: program_amended_by_name {
    type: string
    label: "Amended By"
    sql: ${TABLE}.FNAME ||' '||${TABLE}.LNAME;;
  }

  dimension: program_created_by_name {
    type: string
    label: "Created By"
    sql: ${TABLE}.FNAME ||' '||${TABLE}.LNAME;;
  }

  dimension: mfr_contact_name {
    type: string
    label: "Default Manufacturer Contact Name"
    sql: ${TABLE}.FNAME ||' '||${TABLE}.LNAME;;
  }

  dimension: program_owner_name {
    type: string
    label: "Owner"
    sql: ${TABLE}.FNAME ||' '||${TABLE}.LNAME;;
  }

  dimension: last_updated_by_name {
    type: string
    label: "Last Updated by"
    sql: ${TABLE}.FNAME ||' '||${TABLE}.LNAME;;
  }

  dimension: default_analyst {
    type: string
    label: "Default Analyst"
    sql: ${TABLE}.FNAME ||' '||${TABLE}.LNAME;;
  }

  dimension: claim_owner_name {
    type: string
    label: "Claim Owner Name"
    sql: ${TABLE}.FNAME ||' '||${TABLE}.LNAME;;
  }

  dimension: claim_owner_id {
    type: string
    label: "Claim Owner Id"
    sql: ${TABLE}.MEMBER_NAME ;;
  }

  dimension: payment_approver {
    type: string
    label: "Approver Name"
    sql: ${TABLE}.FNAME ||' '||${TABLE}.LNAME;;
  }

  set: mn_user_all_visible_fields  {
    fields: [full_address,
      city,
      country,
      external_segment,
      first_name,
      full_name,
      last_name,
      member_name,
      postal_zip,
      pwd,
      salutation,
      state_province,
      title,
      count
    ]
  }
# Medicaid Program Amended By Name Set
  set: amemdedby_set {
    fields: [program_amended_by_name]
  }

# Medicaid Program Created By Name Set
  set: createdby_set {
    fields: [program_created_by_name]
  }

# Medicaid Program Default Manufacturer Contact Name set
 set: mfrcontactname_set {
    fields: [mfr_contact_name]
  }

# Medicaid Program owner Name set
  set: programowner_set {
    fields: [program_owner_name]
  }

# Medicaid Program last updated by user Name set
  set: lastupdatedby_set {
    fields: [last_updated_by_name]
  }

# Medicaid Program Analyst Name set
  set: defaultanalyst_set {
    fields: [default_analyst]
  }

# Medicaid Claim owner Name set
  set: claimowner_set {
    fields: [claim_owner_name,claim_owner_id]
  }

# Medicaid payment approver Name set
  set: payment_approver_set {
    fields: [payment_approver]
  }
}
