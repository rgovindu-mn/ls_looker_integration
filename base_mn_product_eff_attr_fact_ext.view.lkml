include: "base_mn_product_eff_attr_fact.view.lkml"

view: mn_product_eff_attr_fact_ext {
  extends: [mn_product_eff_attr_fact]

  dimension: attr_name {
    group_label: "Product EDA Attributes"
    label: "Attribute Name"
  }

  dimension: attr_value {
    group_label: "Product EDA Attributes"
    label: "Attribute Value"
  }

  dimension: effective_end_date {
    group_label: "Product EDA Attributes"
    type: date
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension: effective_start_date {
    group_label: "Product EDA Attributes"
    type: date
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  set: Product_EDA_Attributes {
        fields: [attr_name,attr_value,effective_end_date,effective_start_date]
      }
}
