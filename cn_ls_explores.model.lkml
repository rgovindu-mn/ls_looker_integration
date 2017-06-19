include: "base_ls_explores.model.lkml"

include: "base_mn_rbt_prg_qual_flat_dim.view.lkml"
include: "base_mn_rbt_qual_prod_map_all.view.lkml"

include: "base_mn_rbt_prg_ben_flat_dim.view.lkml"
include: "base_mn_rbt_ben_prod_map_all.view.lkml"

include: "base_mn_product_map_all_vers.view.lkml"
include: "base_mn_product_eff_attr_fact.view.lkml"

include: "base_mn_rbt_qual_mb_prod_map_all.view.lkml"
include: "base_mn_market_basket_dim.view.lkml"
include: "base_mn_product_group_dim.view.lkml"

include: "base_mn_rbt_prg_qual_elg_cust_map_derived.view.lkml"

include: "base_mn_rbt_prg_ben_elg_cust_map_derived.view.lkml"
include: "base_mn_plan_formulary_map.view.lkml"
include: "base_mn_formulary_dim.view.lkml"
include: "base_mn_formulary_prod_map.view.lkml"

include: "base_mn_rebate_prog_prod_map_all.view.lkml"

include: "base_mn_contract_attr_fact.view.lkml"

explore: ben_eligible_plan_map {
  from: mn_rbt_prg_ben_elg_cust_map
  view_name: mn_rbt_prg_ben_elg_cust_map
  label: "Test"
}

explore: mn_combined_rebate_program_dim {
  from: mn_combined_rebate_program_dim
  view_name: mn_combined_rebate_program_dim

  join: mn_rbt_prg_ben_elg_cust_map {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_prg_ben_elg_cust_map
    view_label: "Rebate Program Elig Plan"
    sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rbt_prg_ben_elg_cust_map.program_wid} ;;
  }
}

explore: mn_payer_contract {
  label: "Payer Contracts"
  from: mn_contract_header_dim
  view_name: mn_contract_header_dim

  extends: [mn_contract_header_dim_secure_base,
    mn_contract_header_dim_adhoc_base, mn_combined_rebate_program_dim_base]

  hidden: no

# Data security
  #access_filter: {
  #  field: mn_user_access_ctrt_map.user_wid
  #  user_attribute: access_user_name
  #}

  sql_always_where: ${mn_contract_header_dim.latest_flag} = 'Y' ;;

  join: mn_combined_rebate_program_dim {
    type: left_outer
    view_label: "Rebate Program"
    relationship: many_to_one
    from: mn_combined_rebate_program_dim
    sql_on: ${mn_contract_header_dim.contract_wid} = ${mn_combined_rebate_program_dim.contract_wid} ;;
  }

# ****************************** Rebate Program Qualification joins
  join: mn_rbt_prog_qual_flat_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_prg_qual_flat_dim
    view_label: "Rebate Program Qualification"
    sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rbt_prog_qual_flat_dim.program_wid} ;;
  }

  join: mn_rbt_qual_prod_map_all {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_qual_prod_map_all
    view_label: "Rebate Program Qualification Product"
    sql_on: ${mn_rbt_prog_qual_flat_dim.program_qual_wid} = ${mn_rbt_qual_prod_map_all.basket_wid}.program_qual_wid} ;;
  }

  join: mn_rbt_qual_prod_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Rebate Program Qualification Product"
    sql_on: ${mn_rbt_qual_prod_map_all.product_wid} = ${mn_rbt_qual_prod_dim.product_wid} ;;
    fields: [ndc, product_num, product_name]
  }

  join: mn_rbt_qual_prod_hier {
    type: left_outer
    relationship: many_to_one
    from: mn_product_map_all_ver
    view_label: "Rebate Program Qualification Product Hierarchy"
    sql_on: ${mn_rbt_qual_prod_map_all.product_wid} = ${mn_rbt_qual_prod_hier.level0_product_wid} ;;
  }

  join: mn_rbt_qual_prod_eda {
    type: left_outer
    relationship: many_to_one
    from: mn_product_eff_attr_fact
    view_label: "Rebate Program Qualification Product EDA"
    sql_on: ${mn_rbt_qual_prod_map_all.product_wid} = ${mn_rbt_qual_prod_eda.product_wid} ;;
  }


# ******************** Rebate Program Benefit joins
  join: mn_rbt_prog_ben_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_prg_ben_flat_dim
    view_label: "Rebate Program Benefit"
    sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rbt_prog_ben_dim.program_wid} ;;
  }

  join: mn_rbt_ben_prod_map_all {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_ben_prod_map_all
    view_label: "Rebate Program Benefit Product"
    sql_on: ${mn_rbt_prog_ben_dim.program_ben_wid} = ${mn_rbt_ben_prod_map_all.program_ben_wid} ;;
  }

  join: mn_rbt_ben_prod_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Rebate Program Benefit Product"
    sql_on: ${mn_rbt_ben_prod_map_all.product_wid} = ${mn_rbt_ben_prod_dim.product_wid} ;;
    fields: [ndc, product_num, product_name]
  }

  join: mn_rbt_ben_prod_hier {
    type: left_outer
    relationship: many_to_one
    from: mn_product_map_all_ver
    view_label: "Rebate Program Benefit Product Hierarchy"
    sql_on: ${mn_rbt_ben_prod_map_all.product_wid} = ${mn_rbt_ben_prod_hier.level0_product_wid} ;;
  }

  join: mn_rbt_ben_prod_eda {
    type: left_outer
    relationship: many_to_one
    from: mn_product_eff_attr_fact
    view_label: "Rebate Program Benefit Product EDA"
    sql_on: ${mn_rbt_ben_prod_map_all.product_wid} = ${mn_rbt_ben_prod_eda.product_wid} ;;
  }

# ******************** Rebate Program Qualification MB joins
  join: mn_rbt_qual_mb_prod_map_all {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_qual_mb_prod_map_all
    view_label: "Rebate Program Qualification MB"
    sql_on: ${mn_rbt_prog_qual_flat_dim.program_qual_wid} = ${mn_rbt_qual_mb_prod_map_all.program_qual_wid} ;;
  }

  join: mn_rbt_qual_mb_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_market_basket_dim
    view_label: "Rebate Program Qualification MB"
    sql_on: ${mn_rbt_qual_mb_prod_map_all.basket_wid} = ${mn_rbt_qual_mb_dim.market_basket_wid} ;;
  }

  join: mn_rbt_qual_mb_prod_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Rebate Program Qualification MB Product"
    sql_on: ${mn_rbt_qual_mb_prod_map_all.product_wid} = ${mn_rbt_qual_mb_prod_dim.product_wid} ;;
    fields: [ndc, product_num, product_name]
  }

  join: mn_rbt_qual_mb_prod_hier {
    type: left_outer
    relationship: many_to_one
    from: mn_product_map_all_ver
    view_label: "Rebate Program Qualification MB Product Hierarchy"
    sql_on: ${mn_rbt_qual_mb_prod_map_all.product_wid} = ${mn_rbt_qual_mb_prod_hier.level0_product_wid} ;;
  }

  join: mn_rbt_qual_mb_prod_eda {
    type: left_outer
    relationship: many_to_one
    from: mn_product_eff_attr_fact
    view_label: "Rebate Program Qualification MB Product EDA"
    sql_on: ${mn_rbt_qual_mb_prod_map_all.product_wid} = ${mn_rbt_qual_mb_prod_eda.product_wid} ;;
  }

# ******************** Rebate Program Qualification eligibility
  join: mn_rbt_prg_qual_elg_cust_map {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_prg_qual_elg_cust_map
    view_label: "Rebate Program Qualification Eligible Plan"
    sql_on: ${mn_rbt_prog_qual_flat_dim.program_qual_wid} = ${mn_rbt_prg_qual_elg_cust_map.program_qual_wid} ;;
  }

# ******************** Rebate Program eligibility
  join: mn_rbt_prg_ben_elg_cust_map {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_prg_ben_elg_cust_map
    view_label: "Rebate Program Elig Plan"
    sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rbt_prg_ben_elg_cust_map.program_wid} ;;
  }

  join: mn_plan_formulary_map {
    type: left_outer
    relationship: many_to_one
    from: mn_plan_formulary_map
    view_label: "Rebate Program Elig Plan Formulary"
    sql_on: ${mn_rbt_prg_ben_elg_cust_map.elig_customer_wid} = ${mn_plan_formulary_map.plan_wid} ;;
  }

  join: mn_formulary_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_formulary_dim
    view_label: "Rebate Program Elig Plan Formulary"
    sql_on: ${mn_plan_formulary_map.formulary_wid} = ${mn_formulary_dim.formulary_wid} ;;
  }

  join: mn_formulary_prod_map {
    type: left_outer
    relationship: many_to_one
    from: mn_formulary_prod_map
    view_label: "Rebate Program Elig Plan Formulary Product"
    sql_on: ${mn_plan_formulary_map.formulary_wid} = ${mn_formulary_prod_map.formulary_wid} ;;
  }

  join: mn_formulary_product_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Rebate Program Elig Plan Formulary Product"
    sql_on: ${mn_formulary_prod_map.product_wid} = ${mn_formulary_product_dim.product_wid} ;;
    fields: [ndc, product_num, product_name]
  }

# ******************** Rebate Program Products
  join: mn_rebate_prog_prod_map_all {
    type: left_outer
    relationship: many_to_one
    from: mn_rebate_prog_prod_map_all
    view_label: "Rebate Program Product"
    sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rebate_prog_prod_map_all.program_wid} ;;
    fields: [mn_rebate_prog_prod_map_all.rbt_prog_prod_fields_set*]
  }

  join: mn_rebate_prog_prod_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Rebate Program Product"
    sql_on: ${mn_rebate_prog_prod_map_all.product_wid} = ${mn_rebate_prog_prod_dim.product_wid} ;;
    fields: [product_num, product_name]
  }

# ******************** Contract attr fact

  join: mn_contract_attr_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_contract_attr_fact
    view_label: "Contract Attributes"
    sql_on: ${mn_contract_header_dim.contract_wid} = ${mn_contract_attr_fact.contract_wid} ;;
  }

}
