include: "base_mn_customer_dim.view.lkml"

view: mn_plan_dim_ext {
extends: [mn_customer_dim]

  dimension: plan_address {
    type: string
    sql: ${address} ;;
  }

  dimension: plan_city {
    type: string
    sql: ${city} ;;
  }

  dimension: plan_country {
    type: string
    sql: ${country} ;;
  }

  dimension: plan_name {
    type: string
    sql: ${customer_name} ;;
  }

  dimension: plan_num {
    type: string
    label: "Plan ID"
    sql: ${customer_num} ;;
  }

  dimension: type {
    type: string
    label: "Plan Type"
    sql: ${plan_type} ;;
  }

  dimension: plan_postal_zip {
    type: string
    sql: ${postal_zip} ;;
  }

  dimension: plan_id {
    type: number
    sql: ${src_sys_cust_id} ;;
  }

  dimension: plan_state_province {
    type: string
    sql: ${state_province} ;;
  }
}
