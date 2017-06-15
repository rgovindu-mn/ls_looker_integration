connection: "oracle_rds_ls"

include: "base_ls_explores.model.lkml"
include: "base_mn_mco_util_fact.view.lkml"

explore: mn_mco_util_fact {
}

# Adhoc base explore for Discount Bridge fact with all needed joins

explore: mn_payer_rebate_lines {
  extends: [mn_paid_rebate_lines_base]
  hidden: no

sql_always_where: ${mn_discount_bridge_fact.mco_line_ref_num} is not null or
    upper(${mn_discount_bridge_fact.rebate_module_type}) = 'MCO' ;;
  view_label: "Payer Rebates"

  join: mn_rebate_payment_fact {
    from: mn_rebate_payment_fact
    type: left_outer
    relationship: many_to_one
    sql_on: ${mn_rebate_payment_fact.pymt_pkg_wid} = ${mn_discount_bridge_fact.rebate_pmt_wid}  ;;
    fields: []
  }

  join: mn_contract_header_dim {
    from: mn_contract_header_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Rebate Contract"
    sql_on: ${mn_rebate_payment_fact.contract_wid} = ${mn_contract_header_dim.contract_wid} ;;
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
    sql_on: ${mn_discount_bridge_fact.plan_wid} = ${mn_customer_dim.customer_wid};;
    sql_where: Upper(${mn_customer_dim.customer_type}) = 'PLAN' ;;
  }

  join: mn_combined_rebate_program_dim {
    from: mn_combined_rebate_program_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Rebate Program"
    sql_on: ${mn_rebate_payment_fact.rebate_program_wid} = ${mn_combined_rebate_program_dim.program_wid} ;;
  }

  join: mn_rbt_prog_ben_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_prog_qual_ben_dim
    view_label: "Rebate Program Benefit"
    sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rbt_prog_ben_dim.program_wid} and (
      ${mn_rbt_prog_ben_dim.is_qual_component} = 'N' or ${mn_rbt_prog_ben_dim.is_qual_component} is null) ;;
  }

  join: mn_rbt_prog_ben_sd_rpt {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_prog_qual_ben_sd_rpt
    view_label: "Rebate Program Benefit"
    #fields: [full_name]
    sql_on: ${mn_rbt_prog_ben_dim.program_qual_ben_wid} = ${mn_rbt_prog_ben_sd_rpt.program_qual_ben_wid};;
  }

  join: mn_rbt_prog_ben_prod_map {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_prog_ben_prod_map
    view_label: "Rebate Program Benefit Product"
    sql_on: ${mn_rbt_prog_ben_dim.program_qual_ben_wid} = ${mn_rbt_prog_ben_prod_map.program_ben_wid} ;;
  }

  join: mn_customer_dim {
    type:  left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Rebate Payment Payee"
    sql_on: ${mn_discount_bridge_fact.payee_wid} = ${mn_customer_dim.customer_wid} ;;
  }

}
