include: "base_mn_product_dim.view.lkml"

view: mn_product_dim_adhoc_ext {
  extends: [mn_product_dim]

  dimension: inc_product_name {
    type: string
    group_label: "Included Product/Category"
    label: "Included Product Name"
    sql: ${product_name} ;;
  }

  dimension: inc_product_num {
    type: string
    group_label: "Included Product/Category"
    label: "Included Product Number"
    sql: ${product_num} ;;
  }

    dimension: inc_product_type_adhoc {
    type: string
    group_label: "Included Product/Category"
    label: "Included Product Type"
    sql: ${product_type_adhoc};;
  }

}
