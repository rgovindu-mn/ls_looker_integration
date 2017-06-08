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
include: "base_mn_user_org_map.view.lkml"
include: "base_mn_combined_rebate_program_dim.view.lkml"
include: "base_mn_accrual_type_dim.view.lkml"
include: "base_mn_pmt_type_dim.view.lkml"
include: "base_mn_program_type_dim.view.lkml"
include: "base_mn_pmt_mth_type_dim.view.lkml"
include: "base_mn_ctrt_elig_cot_map.view.lkml"
include: "base_mn_cot_dim.view.lkml"
include: "base_mn_ctrt_elig_cot_map.view.lkml"
include: "base_mn_customer_cot_dim.view.lkml"
include: "base_mn_org_dim.view.lkml"
include: "base_mn_distrib_mthd_dim.view.lkml"


explore: mn_contract_header_dim_base {

  from:  mn_contract_header_dim
  view_name: mn_contract_header_dim
  hidden: yes


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
    view_label: "Contract"
    #fields: []
    sql_on: ${mn_contract_header_dim.contract_status_wid} = ${mn_ctrt_status_dim.status_wid};;
  }

  join: mn_ctrt_domain_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_ctrt_domain_dim
    view_label: "Contract"
    #fields: []
    sql_on: ${mn_contract_header_dim.contract_domain_wid} = ${mn_ctrt_domain_dim.domain_wid};;
  }

  join: mn_ctrt_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_ctrt_type_dim
    view_label: "Contract"
    #fields: []
    sql_on: ${mn_contract_header_dim.contract_type_wid} = ${mn_ctrt_type_dim.ctrt_type_wid};;
  }

  join: mn_ctrt_sub_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_ctrt_sub_type_dim
    view_label: "Contract"
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

# Adhoc base explore for contract header with all needed joins

explore: mn_contract_header_dim_adhoc_base {
  extends: [mn_contract_header_dim_base]
  from:  mn_contract_header_dim
  view_name: mn_contract_header_dim
  hidden: yes

  join: mn_org_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_org_dim
    view_label: "Org"
    sql_on: ${mn_contract_header_dim.org_wid} = ${mn_org_dim.org_wid} ;;
  }

  join: mn_customer_cot_dim {
    type: left_outer
    relationship: many_to_many
    from: mn_customer_cot_dim
    view_label: "Contracted Customer COT"
    sql_on: ${mn_contract_header_dim.owner_wid} = ${mn_customer_cot_dim.customer_wid} ;;
  }

  join: mn_cot_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_cot_dim
    view_label: "Contracted Customer COT"
    sql_on: ${mn_customer_cot_dim.cot_wid}.owner_wid} = ${mn_cot_dim.cot_wid}
            and ${mn_customer_cot_dim.eff_start_date} <= ${mn_contract_header_dim.implemented_date}
            and ${mn_customer_cot_dim.eff_end_date} <= ${mn_contract_header_dim.implemented_date} ;;
  }

  join: mn_parent_contract_header_dim {
    from: mn_contract_header_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Parent Contract"
    fields: [mn_parent_contract_header_dim.contract_number]
    sql_on: ${mn_contract_header_dim.parent_contract_wid} = ${mn_parent_contract_header_dim.contract_wid} ;;
  }

  join: mn_distrib_mthd_dim {
    from: mn_distrib_mthd_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Distribution Method"
    sql_on: ${mn_contract_header_dim.distribution_method_wid} = ${mn_distrib_mthd_dim.dist_method_wid} ;;
  }

}

explore: mn_contract_header_dim_secure_base {
  extends: [mn_contract_header_dim_base]
  from:  mn_contract_header_dim
  view_name: mn_contract_header_dim
  hidden: yes


  join: mn_user_access_ctrt_map {
    type: inner
    relationship: many_to_one
    from: mn_user_org_map
    view_label: "User Access"
    fields: []
    sql_on: ${mn_contract_header_dim.org_wid} = ${mn_user_access_ctrt_map.org_wid};;
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

explore: mn_combined_rebate_program_dim {

  from:  mn_combined_rebate_program_dim
  view_name: mn_combined_rebate_program_dim
  hidden: yes

  join: mn_accrual_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_accrual_type_dim
    view_label: "Accrual Type"
    sql_on: ${mn_combined_rebate_program_dim.accrual_type_wid} = ${mn_accrual_type_dim.accrual_type_wid};;
  }

  join: mn_pmt_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_pmt_type_dim
    view_label: "Payment Type"
    sql_on: ${mn_combined_rebate_program_dim.pmt_type_wid} = ${mn_pmt_type_dim.pmt_type_wid};;
  }

  join: mn_program_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_program_type_dim
    view_label: "Program Type"
    sql_on: ${mn_combined_rebate_program_dim.program_type_wid} = ${mn_program_type_dim.program_type_wid};;
  }

  join: mn_pmt_mth_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_pmt_mth_type_dim
    view_label: "Program Method Type"
    sql_on: ${mn_combined_rebate_program_dim.pmt_method_wid} = ${mn_pmt_mth_type_dim.pmt_mth_type_wid};;
  }

  join: mn_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Payee"
    sql_on: ${mn_combined_rebate_program_dim.payee_customer_wid} = ${mn_customer_dim.customer_wid};;
  }
}
