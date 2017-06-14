include: "base_ls_explores.model.lkml"
include: "base_mn_rbt_qual_prod_map_all.view.lkml"
include: "base_mn_product_map_all_vers.view.lkml"
include: "base_mn_product_eff_attr_fact.view.lkml"
include: "base_mn_rbt_ben_prod_map_all.view.lkml"
include: "base_mn_rbt_qual_mb_prod_map_all.view.lkml"
include: "base_mn_market_basket_dim.view.lkml"
include: "base_mn_product_group_dim.view.lkml"

explore: mn_contract_header_dim {
  label: "Payer Contracts"
  from: mn_contract_header_dim
  view_name: mn_contract_header_dim

  extends: [mn_contract_header_dim_secure_base,
    mn_contract_header_dim_adhoc_base, mn_combined_rebate_program_dim_base]
  hidden: no

  sql_always_where: ${mn_contract_header_dim.latest_flag} = 'Y' ;;

  join: mn_combined_rebate_program_dim {
    type: left_outer
    view_label: "Rebate Program"
    relationship: many_to_one
    from: mn_combined_rebate_program_dim
    sql_on: ${mn_contract_header_dim.contract_wid} = ${mn_combined_rebate_program_dim.contract_wid} ;;
  }

# ****************************** Rebate Program Qualification joins
  join: mn_rbt_prog_qual_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_prog_qual_ben_dim
    view_label: "Rebate Program Qualification"
    sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rbt_prog_qual_dim.program_wid} and (${mn_rbt_prog_qual_dim.is_qual_component} = 'Y' ) ;;
  }

  join: mn_rbt_prog_qual_sd_rpt {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_prog_qual_ben_sd_rpt
    view_label: "Rebate Program Qualification"
    sql_on: ${mn_rbt_prog_qual_dim.program_qual_ben_wid} = ${mn_rbt_prog_qual_sd_rpt.program_qual_ben_wid};;
#      fields: [- mn_rbt_prog_qual_sd_rpt.rebate_program_ben_sd_rpt_additional_fields_set*]
  }

  join: mn_rbt_qual_prod_map_all {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_qual_prod_map_all
    view_label: "Rebate Program Qualification Product"
    sql_on: ${mn_rbt_prog_qual_dim.program_qual_ben_wid} = ${mn_rbt_qual_prod_map_all.program_qual_wid} ;;
  }

  join: mn_rbt_qual_product {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Rebate Program Qualification Product"
    sql_on: ${mn_rbt_qual_prod_map_all.product_wid} = ${mn_rbt_qual_product.product_wid} ;;
    fields: [mn_rbt_qual_product.ndc, mn_rbt_qual_product.product_num,mn_rbt_qual_product.product_name]
  }

  join: mn_rbt_prog_qual_prod_hier {
    type: left_outer
    relationship: many_to_one
    from: mn_product_map_all_ver
    view_label: "Rebate Program Qualification Product Hierarchy"
    sql_on: ${mn_rbt_qual_prod_map_all.product_wid} = ${mn_rbt_prog_qual_prod_hier.level0_product_wid} ;;
  }

  join: mn_rbt_prog_qual_prod_eda {
    type: left_outer
    relationship: many_to_one
    from: mn_product_eff_attr_fact
    view_label: "Rebate Program Qualification Product EDA"
    sql_on: ${mn_rbt_qual_prod_map_all.product_wid} = ${mn_rbt_prog_qual_prod_eda.product_wid} ;;
  }


# ******************** Rebate Program Benefit joins
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
    sql_on: ${mn_rbt_prog_ben_dim.program_qual_ben_wid} = ${mn_rbt_prog_ben_sd_rpt.program_qual_ben_wid};;
  }

  join: mn_rbt_ben_prod_map_all {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_ben_prod_map_all
    view_label: "Rebate Program Benefit Product"
    sql_on: ${mn_rbt_prog_ben_dim.program_qual_ben_wid} = ${mn_rbt_ben_prod_map_all.program_ben_wid} ;;
  }

  join: mn_rbt_ben_product {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Rebate Program Benefit Product"
    sql_on: ${mn_rbt_ben_prod_map_all.product_wid} = ${mn_rbt_ben_product.product_wid} ;;
    fields: [ndc, product_num, product_name]
  }

  join: mn_rbt_prog_ben_prod_hier {
    type: left_outer
    relationship: many_to_one
    from: mn_product_map_all_ver
    view_label: "Rebate Program Benefit Product Hierarchy"
    sql_on: ${mn_rbt_ben_prod_map_all.product_wid} = ${mn_rbt_prog_ben_prod_hier.level0_product_wid} ;;
  }

  join: mn_rbt_prog_ben_prod_eda {
    type: left_outer
    relationship: many_to_one
    from: mn_product_eff_attr_fact
    view_label: "Rebate Program Benefit Product EDA"
    sql_on: ${mn_rbt_ben_prod_map_all.product_wid} = ${mn_rbt_prog_ben_prod_eda.product_wid} ;;
  }

# ******************** Rebate Program Qualification MB joins
  join: mn_rbt_qual_mb_prod_map_all {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_qual_mb_prod_map_all
    view_label: "Rebate Program Qualification MB"
    sql_on: ${mn_rbt_qual_prod_map_all.program_qual_wid} = ${mn_rbt_qual_mb_prod_map_all.program_qual_wid} ;;
  }

}
