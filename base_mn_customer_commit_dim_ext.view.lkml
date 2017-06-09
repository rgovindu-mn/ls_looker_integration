include: "base_mn_customer_dim.view.lkml"

view: mn_customer_commit_dim_ext {
  extends: [mn_customer_dim]

  dimension: committed_customer_name {
    type: string
    sql: ${TABLE}.CUSTOMER_NAME ;;
  }

  dimension: committed_customer_num {
    type: string
    sql: ${TABLE}.CUSTOMER_NUM ;;
  }

}
