connection: "oracle_rds_ls"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project


label: "Sales Intelligence"

explore: mn_date_dim {
  label: " Invoice Date"
}

explore: mn_cmpl_bucket_fact {

}
explore: mn_date_labels {
  label: "Year Labels"
  hidden: yes
}

explore: mn_cmpl_period_fact {
  label: " Compliance Data"
  from:  mn_cmpl_period_fact
  view_name: mn_cmpl_period_fact

  join: mn_product_group_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_group_dim
    view_label: "Price Program"
    #fields: [channel_name]
    sql_on: ${pg_wid} = ${mn_product_group_dim.pg_wid};;
  }

  join: mn_contract_header_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_contract_header_dim
    view_label: "Contract"
    #fields: []
    sql_on: ${contract_wid} = ${mn_contract_header_dim.contract_wid};;
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
    view_label: "Account"
    #fields: []
    sql_on: ${customer_wid} = ${mn_customer_dim.customer_wid};;
  }

}

explore: mn_cmpl_period_fact_dated {
  extends: [mn_cmpl_period_fact]
  from:  mn_cmpl_period_fact_dated
  view_name: mn_cmpl_period_fact
  label: "Compliance Data Monthly"

  sql_always_where: ${mn_date_dim.start_date_sql_raw} <= SYSDATE ;;

  join: mn_date_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_period_dim
    view_label: "Date"
    #fields: [full_name]
    sql_on: ${mn_date_dim.start_date_sql_raw} BETWEEN TRUNC(${mn_cmpl_period_fact.period_start_raw},'MM')
       AND  TRUNC(${mn_cmpl_period_fact.period_end_raw},'MM');;
  }

}

explore: mn_combined_sale_fact {
  label: " Sales Data"

  join: mn_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Account"
    #fields: [full_name]
    sql_on: ${mn_combined_sale_fact.customer_wid} = ${mn_customer_dim.customer_wid};;
  }

  join: mn_date_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_date_dim
    view_label: "Invoice Date"
    #fields: [full_name]
    sql_on: ${mn_combined_sale_fact.inv_date_wid} = ${mn_date_dim.date_dim_wid};;
  }

  join: mn_contract_header_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_contract_header_dim
    view_label: "Contract"
    #fields: []
    sql_on: ${mn_contract_header_dim.contract_wid} = ${mn_combined_sale_fact.contract_wid};;
  }

  join: mn_product_group_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_group_dim
    view_label: "Price Program"
    #fields: [channel_name]
    sql_on: ${mn_combined_sale_fact.pg_wid} = ${mn_product_group_dim.pg_wid};;
  }

  join: mn_product_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Product"
    #fields: [channel_name]
    sql_on: ${mn_combined_sale_fact.product_wid} = ${mn_product_dim.product_wid};;
  }

  join: mn_product_map {
    type: left_outer
    relationship: many_to_one
    from: mn_product_map
    view_label: ""
    fields: []
    sql_on: ${mn_product_dim.product_wid} = ${mn_product_map.child_prod_wid} AND ${mn_product_map.depth_from_parent} = 1;;
  }

  join: mn_category_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Product Category"
    #fields: [channel_name]
    sql_on: ${mn_product_map.parent_prod_wid} = ${mn_category_dim.product_wid};;
  }


  join: mn_billto_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Bill To Customer"
    #fields: [full_name]
    sql_on: ${mn_combined_sale_fact.bill_to_customer_wid} = ${mn_billto_customer_dim.customer_wid};;
  }

  join: mn_1shipto_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Ship To Customer"
    #fields: [full_name]
    sql_on: ${mn_combined_sale_fact.ship_to_customer_wid} = ${mn_1shipto_customer_dim.customer_wid};;
  }

  join: mn_2soldto_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Sold To Customer"
    #fields: [full_name]
    sql_on: ${mn_combined_sale_fact.sold_to_customer_wid} = ${mn_2soldto_customer_dim.customer_wid};;
  }

  join: mn_channel_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Channel"
    #fields: [full_name]
    sql_on: ${mn_combined_sale_fact.branch_distr_wid} = ${mn_channel_customer_dim.customer_wid};;
  }

}
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
    view_label: "Price Program"
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

explore: mn_contract_header_dim{

  label: "Contract Header"

  sql_always_where:  ${mn_contract_header_dim.latest_flag} = 'Y'  ;;


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

}
