connection: "oracle_rds_ls"

include: "base_mn_user_access_map.view.lkml"
include: "base_mn_contract_header_dim.view.lkml"
include: "base_mn_user_dim.view.lkml"
include: "base_mn_ctrt_status_dim.view.lkml"
include: "base_mn_ctrt_domain_dim.view.lkml"
include: "base_mn_ctrt_type_dim.view.lkml"
include: "base_mn_ctrt_sub_type_dim.view.lkml"
include: "base_mn_customer_dim.view.lkml"
include: "base_mn_product_group_dim.view.lkml"
include: "base_mn_bus_segment_dim.view.lkml"
include: "base_mn_price_list_dim.view.lkml"
include: "base_mn_prc_method_dim.view.lkml"


explore: mn_contract_header_dim_base {

  from:  mn_contract_header_dim
  view_name: mn_contract_header_dim
  hidden: yes


  join: mn_user_access_ctrt_map {
    type: inner
    relationship: many_to_one
    from: mn_user_access_map
    view_label: "User Access"
    fields: []
    sql_on: ${mn_contract_header_dim.owner_wid} = ${mn_user_access_ctrt_map.customer_wid};;
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

  join: mn_customer_owner_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Contract Owner Account"
    #fields: []
    sql_on: ${mn_contract_header_dim.owner_wid} = ${mn_customer_owner_dim.customer_wid};;
  }
}

explore: mn_product_group_dim_base {

  from:  mn_product_group_dim
  view_name: mn_product_group_dim
  hidden: yes

  join: mn_prc_method_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_prc_method_dim
    view_label: "Pricing Method"
    sql_on: ${mn_product_group_dim.pricing_method_wid} = ${mn_prc_method_dim.prc_method_wid};;
  }

  join: mn_price_list_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_price_list_dim
    view_label: "Price List"
    sql_on: ${mn_product_group_dim.base_price_list_wid} = ${mn_price_list_dim.price_list_wid};;
  }

  join: mn_bus_segment_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_bus_segment_dim
    view_label: "Pricing Segment"
    sql_on: ${mn_product_group_dim.bus_seg_wid} = ${mn_bus_segment_dim.bus_seg_wid};;
  }
}
