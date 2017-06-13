include: "base_mn_product_eff_attr_fact.view.lkml"

view: mn_product_attr_adhoc_ext {
      extends: [mn_product_eff_attr_fact]


  dimension: pg_inc_attr_name {
    type: string
    group_label: "Included Product/Category"
    label: "EDA Name"
    sql: ${attr_name} ;;
  }

  dimension: pg_inc_attr_value {
    type: string
    group_label: "Included Product/Category"
    label: "EDA Value"
    sql: ${attr_value} ;;
  }


  dimension_group: pg_inc_eff_end {
    type: time
    group_label: "Included Product/Category"
    label: "EDA End"
    timeframes: [
      date
    ]
    sql: ${eff_end_date} ;;
  }

  dimension_group: pg_inc_eff_start {
    type: time
    group_label: "Included Product/Category"
    label: "EDA Start"
    timeframes: [
      date
      ]
    sql: ${eff_start_date} ;;
  }

  dimension: pg_exp_attr_name {
    type: string
    group_label: "Product EDA"
    label: "EDA Name"
    sql: ${attr_name} ;;
  }

  dimension: pg_exp_attr_value {
    type: string
    group_label: "Product EDA"
    label: "EDA Value"
    sql: ${attr_value} ;;
  }


  dimension_group: pg_exp_eff_end {
    type: time
    group_label: "Product EDA"
    label: "EDA End"
    timeframes: [
      date
    ]
    sql: ${eff_end_date} ;;
  }

  dimension_group: pg_exp_eff_start {
    type: time
    group_label: "Product EDA"
    label: "EDA Start"
    timeframes: [
      date
    ]
    sql: ${eff_start_date} ;;
  }


}
