connection: "oracle_rds_ls"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project


label: "Field Intelligence"

explore: mn_pg_product_pricing_fact{

  label: "Pricing Program and Prices"

  sql_always_where: ${mn_product_group_dim.latest_flag} = 'Y' and ${mn_contract_header_dim.latest_flag} = 'Y'  ;;

  join: mn_product_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Product"
    #fields: [channel_name]
    sql_on: ${mn_pg_product_pricing_fact.product_wid} = ${mn_product_dim.product_wid};;
  }

  join: mn_product_group_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_group_dim
    view_label: "Product Group"
    #fields: [channel_name]
    sql_on: ${mn_pg_product_pricing_fact.pg_wid} = ${mn_product_group_dim.pg_wid};;
  }


  join: mn_contract_header_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_contract_header_dim
    view_label: "Contract"
    #fields: []
    sql_on: ${mn_contract_header_dim.src_sys_contract_id} = ${mn_product_group_dim.src_sys_contract_id};;
  }

  join: mn_contract_owner_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_user_dim
    view_label: "Contract Owner"
    #fields: [full_name]
    sql_on: ${mn_contract_header_dim.owner_wid} = ${mn_contract_owner_dim.user_wid};;
  }

  join: mn_contract_author_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_user_dim
    view_label: "Contract Author"
    #fields: [full_name]
    sql_on: ${mn_contract_header_dim.author_wid} = ${mn_contract_author_dim.user_wid};;
  }

  join: mn_contract_srep_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_user_dim
    view_label: "Contract Sales Rep"
    #fields: [full_name]
    sql_on: ${mn_contract_header_dim.sales_rep_wid} = ${mn_contract_srep_dim.user_wid};;
  }


  join: mn_ctrt_status_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_ctrt_status_dim
    view_label: "Contract Status"
    #fields: []
    sql_on: ${mn_contract_header_dim.contract_status_wid} = ${mn_ctrt_status_dim.status_wid};;
  }

  join: mn_ctrt_domain_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_ctrt_domain_dim
    view_label: "Contract Domain"
    #fields: []
    sql_on: ${mn_contract_header_dim.contract_domain_wid} = ${mn_ctrt_domain_dim.domain_wid};;
  }

  join: mn_ctrt_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_ctrt_type_dim
    view_label: "Contract Type"
    #fields: []
    sql_on: ${mn_contract_header_dim.contract_type_wid} = ${mn_ctrt_type_dim.ctrt_type_wid};;
  }

  join: mn_ctrt_sub_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_ctrt_sub_type_dim
    view_label: "Contract Sub Type"
    #fields: []
    sql_on: ${mn_contract_header_dim.contract_sub_type_wid} = ${mn_ctrt_sub_type_dim.ctrt_sub_type_wid};;
  }

  join: mn_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Contract Account"
    #fields: []
    sql_on: ${mn_contract_header_dim.owner_wid} = ${mn_customer_dim.customer_wid};;
  }

  join: mn_prc_method_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_prc_method_dim
    view_label: "Product Group"
    #fields: [channel_name]
    sql_on: ${mn_prc_method_dim.prc_method_wid} = ${mn_product_group_dim.pricing_method_wid};;
  }

}
# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     sql_on: ${orders.id} = ${order_items.order_id}
#   }
#
#   join: users {
#     sql_on: ${users.id} = ${orders.user_id}
#   }
# }
