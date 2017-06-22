connection: "oracle_rds_ls"

include: "base_ls_explores.model.lkml"
include: "base_mn_mco_util_fact.view.lkml"
include: "base_mn_product_map_all_vers.view.lkml"

explore: payer_utilization {
  label: "Payer Utilization"
  from: mn_mco_util_fact
  view_name: mn_mco_util_fact
  view_label: "Utilization lines"
  hidden: no

  join: mn_customer_dim_bob {
    type:  left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Book of Business"
    sql_on: ${mn_mco_util_fact.bob_wid} = ${mn_customer_dim_bob.customer_wid} ;;
  }

  join: mn_customer_dim_parent_pbm {
    type:  left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Parent PBM"
    sql_on: ${mn_mco_util_fact.parent_pbm_wid} = ${mn_customer_dim_parent_pbm.customer_wid} ;;
  }

  join: mn_customer_dim_plan {
    type:  left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Plan"
    sql_on: ${mn_mco_util_fact.plan_wid} = ${mn_customer_dim_plan.customer_wid} ;;
  }

  join: mn_contracted_customer_dim {
    type:  left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Contracted Customer"
    sql_on: ${mn_mco_util_fact.contract_cust_wid} = ${mn_contracted_customer_dim.customer_wid} ;;
  }

  join: mn_contracted_customer_id {
    type:  left_outer
    relationship: many_to_one
    from: mn_customer_ids_dim
    view_label: "Contracted Customer"
    sql_on: ${mn_contracted_customer_dim.customer_wid} = ${mn_contracted_customer_id.customer_wid} ;;
  }

  join: mn_mco_submission_dim {
    type:  left_outer
    relationship: many_to_one
    from: mn_mco_submission_dim
    view_label: "Submissions"
    sql_on: ${mn_mco_util_fact.mco_submission_wid} = ${mn_mco_submission_dim.mco_submission_wid} ;;
  }

  join: mn_product_dim {
    type:  left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Product"
    sql_on: ${mn_mco_util_fact.product_wid} = ${mn_product_dim.product_wid} ;;
  }

  join: mn_product_map_all_ver {
    type:  left_outer
    relationship: many_to_one
    from: mn_product_map_all_ver
    view_label: "Product"
    sql_on: ${mn_product_dim.product_wid} = ${mn_product_map_all_ver.level0_product_wid} ;;
  }

  join: mn_formulary_dim {
    type:  left_outer
    relationship: many_to_one
    from: mn_formulary_dim
    view_label: "Formulary"
    sql_on: ${mn_mco_util_fact.formulary_wid} = ${mn_formulary_dim.formulary_wid} ;;
  }

  join: mn_org_dim {
    type:  left_outer
    relationship: many_to_one
    from: mn_org_dim
    view_label: "Org"
    sql_on: ${mn_mco_util_fact.org_wid} = ${mn_org_dim.org_wid} ;;
  }

  join: mn_cot_dim {
    type:  left_outer
    relationship: many_to_one
    from: mn_cot_dim
    view_label: "Class of Trade"
    sql_on: ${mn_mco_util_fact.cot_wid} = ${mn_cot_dim.cot_wid} ;;
  }

}

# Adhoc base explore for Discount Bridge fact with all needed joins

explore: payer_rebate {
  label: "Payer Rebates"
  from: mn_discount_bridge_fact
  view_name: mn_discount_bridge_fact
  view_label: "Rebate Lines"

  extends: [mn_paid_rebate_lines_base, mn_contract_header_dim_adhoc_base]
  hidden: no

  sql_always_where: (${mn_discount_bridge_fact.mco_line_ref_num} is not null or
    upper(${mn_discount_bridge_fact.rebate_module_type}) = 'MCO') ;;

  join: mn_rebate_payment_fact {
    from: mn_rebate_payment_fact
    view_label: "Rebate Payment"
    type: left_outer
    relationship: many_to_one
    sql_on: ${mn_rebate_payment_fact.pymt_pkg_wid} = ${mn_discount_bridge_fact.rebate_pmt_wid}  ;;
#     fields: []
  }

  join: mn_contract_header_dim {
    from: mn_contract_header_dim
    view_label: "Contract"
    type: left_outer
    relationship: many_to_one
    sql_on: ${mn_rebate_payment_fact.contract_wid} = ${mn_contract_header_dim.contract_wid} ;;
  }

  join: mn_additional_delegate_dim {
    view_label: "Rebate Contract Additional Delegate"
    fields: []
  }

  join: mn_rebate_payment_package_dim {
    from: mn_rebate_payment_package_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Rebate Payment Package"
    sql_on: ${mn_rebate_payment_fact.pymt_pkg_wid} = ${mn_rebate_payment_package_dim.pymt_pkg_wid} ;;
  }

  join: mn_product_dim {
    from: mn_product_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Rebate Product"
    sql_on: ${mn_discount_bridge_fact.product_wid} = ${mn_product_dim.product_wid} ;;
  }

  join:  mn_plan_dim {
    from: mn_customer_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Rebate Plan"
    sql_on: ${mn_discount_bridge_fact.plan_wid} = ${mn_plan_dim.customer_wid};;
    sql_where: Upper(${mn_plan_dim.customer_type}) = 'PLAN' ;;
  }

  join: mn_combined_rebate_program_dim {
    from: mn_combined_rebate_program_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Rebate Program"
    sql_on: ${mn_rebate_payment_fact.rebate_program_wid} = ${mn_combined_rebate_program_dim.program_wid} ;;
  }

  # join: mn_rbt_prg_ben_flat_dim {
  #   type: left_outer
  #   relationship: many_to_one
  #   from: mn_rbt_prg_ben_flat_dim
  #   view_label: "Rebate Program Benefit"
  #   sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rbt_prg_ben_flat_dim.program_wid} ;;
  # }


  # join: mn_rbt_prog_ben_prod_map {
  #   type: left_outer
  #   relationship: many_to_one
  #   from: mn_rbt_prog_ben_prod_map
  #   view_label: "Rebate Program Benefit Product"
  #   sql_on: ${mn_rbt_prg_ben_flat_dim.program_ben_wid} = ${mn_rbt_prog_ben_prod_map.program_ben_wid} ;;
  # }

  fields: [ALL_FIELDS*, -mn_discount_bridge_fact.cs_line_ref_num]

}
