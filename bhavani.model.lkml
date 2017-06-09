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
include: "base_mn_pg_tier_basis_dim.view.lkml"
include: "base_mn_rbt_qual_mb_prod_map.view.lkml"
include: "base_mn_product_dim.view.lkml"
include: "base_mn_market_basket_dim.view.lkml"
include: "base_mn_product_group_dim.view.lkml"
include: "base_mn_rbt_prog_qual_prod_map.view.lkml"
include: "base_mn_rbt_prog_ben_prod_map.view.lkml"
include: "base_mn_rebate_payment_fact.view.lkml"
include: "base_mn_payment_package_dim.view.lkml"


explore: mn_rbt_qual_mb_prod_map_base {
  from:  mn_rbt_qual_mb_prod_map
  view_name: mn_rbt_qual_mb_prod_map
  hidden: yes

  join: mn_product_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Product"
    sql_on: ${mn_rbt_qual_mb_prod_map.product_wid} = ${mn_product_dim.product_wid};;
  }

  join: mn_market_basket_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_market_basket_dim
    view_label: "Market Basket"
    sql_on: ${mn_rbt_qual_mb_prod_map.basket_wid} = ${mn_market_basket_dim.market_basket_wid} ;;
  }

  join: mn_product_group_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_group_dim
    view_label: "Product Group"
    sql_on: ${mn_rbt_qual_mb_prod_map.source_pg_id} = ${mn_product_group_dim.src_sys_pg_id} ;;
    sql_where: ${mn_product_group_dim.latest_flag} = 'Y' ;;

  }
}

explore: mn_rbt_prog_ben_prod_map_base {
  from:  mn_rbt_prog_ben_prod_map
  view_name: mn_rbt_prog_ben_prod_map
  hidden: yes

  join: mn_product_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Product"
    sql_on: ${mn_rbt_prog_ben_prod_map.product_wid} = ${mn_product_dim.product_wid};;
  }

  join: mn_product_group_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_group_dim
    view_label: "Product Group"
    sql_on: ${mn_rbt_prog_ben_prod_map.source_pg_id} = ${mn_product_group_dim.src_sys_pg_id} ;;
    sql_where: ${mn_product_group_dim.latest_flag} = 'Y' ;;
  }

}

explore: mn_rbt_prog_qual_prod_map_base {
  from:  mn_rbt_prog_qual_prod_map
  view_name: mn_rbt_prog_qual_prod_map
  hidden: yes

  join: mn_product_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Product"
    sql_on: ${mn_rbt_prog_qual_prod_map.product_wid} = ${mn_product_dim.product_wid};;
  }

  join: mn_product_group_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_group_dim
    view_label: "Product Group"
    sql_on: ${mn_rbt_prog_qual_prod_map.source_pg_id} = ${mn_product_group_dim.src_sys_pg_id} ;;
    sql_where: ${mn_product_group_dim.latest_flag} = 'Y' ;;
  }
}
