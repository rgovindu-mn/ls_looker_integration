#connection: "oracle_rds_ls"
include: "base_ls_database_connection.model.lkml"
include: "*.view.lkml"         # include all views in this project
#include: "*.dashboard.lookml"  # include all dashboards in this project
include: "base_ls_explores.model.lkml"

label: "Provider Explorer"


explore: mn_contract_header_dim {

  label: "Full Contract Structure"

  extends: [mn_contract_header_dim_secure_base, mn_contract_header_dim_adhoc_base, mn_product_group_dim_base]

  from:  mn_contract_header_dim_secure
  view_name: mn_contract_header_dim
  hidden: no

  sql_always_where:  ${mn_contract_header_dim.latest_flag} = 'Y'  ;;


  join: mn_product_group_dim {
    type: left_outer
    view_label: "Pricing Program"
    relationship: many_to_one
    from: mn_product_group_dim
    sql_on: ${mn_contract_header_dim.src_sys_contract_id} = ${mn_product_group_dim.src_sys_contract_id}
    AND ${mn_product_group_dim.latest_flag} = 'Y' ;;
  }

  join: mn_ctrt_wholesaler_map {
    type: left_outer
    view_label: "Contract Trading Partner"
    relationship: many_to_one
    from: mn_ctrt_wholesaler_map
    fields: [eff_start_date, eff_end_date]
    sql_on: ${mn_contract_header_dim.contract_wid} = ${mn_ctrt_wholesaler_map.contract_wid};;
  }

  join: mn_ctrt_elig_cot_map {
    type: left_outer
    view_label: "Contract Eligible Class Of Trade"
    relationship: many_to_one
    from: mn_ctrt_elig_cot_map
    fields: [eff_start_date, eff_end_date]
    sql_on: ${mn_contract_header_dim.contract_wid} = ${mn_ctrt_elig_cot_map.contract_wid};;
  }

  join: mn_ctrt_elig_cot_dim {
    type: left_outer
    view_label: "Contract Eligible Class Of Trade"
    relationship: many_to_one
    from: mn_cot_dim
    #fields: []
    sql_on: ${mn_ctrt_elig_cot_dim.cot_wid} = ${mn_ctrt_elig_cot_map.cot_wid};;
  }


  join: mn_ctrt_wholesaler_dim {
    type: left_outer
    relationship: many_to_one
    view_label: "Contract Trading Partner"
    from: mn_customer_dim
    sql_on: ${mn_ctrt_wholesaler_map.customer_wid} = ${mn_ctrt_wholesaler_dim.customer_wid};;
  }

  join: mn_contract_attr_fact {
    type: left_outer
    view_label: "Contract"
    relationship: many_to_one
    from: mn_contract_attr_fact
    fields: [eff_start_date, eff_end_date, attr_name, attr_value]
    sql_on: ${mn_contract_header_dim.contract_wid} = ${mn_contract_attr_fact.contract_wid};;
  }

  join: mn_ctrt_elig_customers_map {
    type: left_outer
    view_label: "Contract Eligibility"
    relationship: many_to_one
    from: mn_ctrt_elig_customers_map
    #fields: []
    sql_on: ${mn_contract_header_dim.src_sys_contract_id} = ${mn_ctrt_elig_customers_map.src_sys_contract_id};;
  }

  join: mn_ctrt_elig_customer_dim {
    type: left_outer
    relationship: many_to_one
    view_label: "Contract Eligibility"
    from: mn_customer_dim
    sql_on: ${mn_ctrt_elig_customers_map.elig_customer_wid} = ${mn_ctrt_elig_customer_dim.customer_wid};;
  }

  join: mn_ctrt_commit_customer_dim {
    type: left_outer
    relationship: many_to_one
    view_label: "Contract Eligibility"
    from: mn_customer_commit_dim_ext
    fields: [committed_customer_name, committed_customer_num]
    sql_on: ${mn_ctrt_elig_customers_map.commit_customer_wid} = ${mn_ctrt_commit_customer_dim.customer_wid};;
  }


  join: mn_pg_prc_adhoc_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_pg_product_pricing_fact_adhoc_ext
    view_label: "Pricing Program Products and Pricing"
    #fields: [channel_name]
    sql_on: ${mn_pg_prc_adhoc_fact.pg_wid} = ${mn_product_group_dim.pg_wid}
    AND ${mn_pg_prc_adhoc_fact.tier_idx}=1;;
  }


  join: mn_pg_prod_adhoc_map {
    type: left_outer
    relationship: many_to_one
    from: mn_pg_prod_adhoc_map
    view_label: "Pricing Program Product Information"
    #fields: [channel_name]
    sql_on: ${mn_pg_prod_adhoc_map.pg_wid} = ${mn_product_group_dim.pg_wid}
      ;;
  }

  join: mn_pg_mb_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_market_basket_dim
    view_label: "Pricing Program Product Information"
    #fields: [product_name, product_num, product_type]
    sql_on: ${mn_pg_prod_adhoc_map.pg_basket_wid} = ${mn_pg_mb_dim.market_basket_wid};;
  }


  join: mn_product_pg_inc_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim_adhoc_ext
    view_label: "Pricing Program Product Information"
    fields: [inc_product_name, inc_product_num, inc_product_type_adhoc]
    sql_on: ${mn_pg_prod_adhoc_map.pg_product_wid} = ${mn_product_pg_inc_dim.product_wid};;
  }


  join: mn_product_pg_exp_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim_adhoc_ext
    view_label: "Pricing Program Product Information"
    fields: [product_name, product_num, product_type_adhoc]
    sql_on: ${mn_pg_prod_adhoc_map.pg_expanded_product_wid} = ${mn_product_pg_inc_dim.product_wid};;
  }

  join: mn_product_attr_adhoc_inc {
    type: left_outer
    relationship: many_to_one
    from: mn_product_attr_adhoc_ext
    view_label: "Pricing Program Product Information"
    fields: [pg_inc_attr_name, pg_inc_attr_value, pg_inc_eff_start_date, pg_inc_eff_end_date]
    sql_on: ${mn_pg_prod_adhoc_map.pg_product_wid} = ${mn_product_attr_adhoc_inc.product_wid};;
  }



  join: mn_product_attr_adhoc_exp {
    type: left_outer
    relationship: many_to_one
    from: mn_product_attr_adhoc_ext
    view_label: "Pricing Program Product Information"
    fields: [pg_exp_attr_name, pg_exp_attr_value, pg_exp_eff_start_date, pg_exp_eff_end_date]
    sql_on: ${mn_pg_prod_adhoc_map.pg_expanded_product_wid} = ${mn_product_attr_adhoc_exp.product_wid};;
  }



  join: mn_pg_prd_prc_entlmt_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_pg_prd_prc_entlmt_fact
    view_label: "Pricing Program Products and Pricing"
    #fields: [channel_name]
    sql_on: ${mn_pg_prd_prc_entlmt_fact.src_sys_struct_li_id} = ${mn_pg_prc_adhoc_fact.src_sys_struct_li_id};;
  }


  join: mn_pg_prod_attr_sn_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_pg_prod_attr_sn_fact
    view_label: "Pricing Program Products and Pricing"
    #fields: [channel_name]
    sql_on: ${mn_pg_prod_attr_sn_fact.src_sys_struct_li_id} = ${mn_pg_prc_adhoc_fact.src_sys_struct_li_id};;
  }


  join: mn_pg_prod_attr_po_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_pg_prod_attr_po_fact
    view_label: "Pricing Program Products and Pricing"
    #fields: [channel_name]
    sql_on: ${mn_pg_prod_attr_po_fact.src_sys_struct_li_id} = ${mn_pg_prc_adhoc_fact.src_sys_struct_li_id};;
  }

  join: mn_pg_pg_prc_fact_flat {
    type: left_outer
    relationship: many_to_one
    from: mn_pg_prc_fact_flat
    view_label: "Pricing Program Products and Pricing"
    #fields: [channel_name]
    sql_on: ${mn_pg_prc_adhoc_fact.pg_wid} = ${mn_pg_pg_prc_fact_flat.pg_wid};;
  }


  join: mn_big_award_flat_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_bid_award_flat_fact
    view_label: "Pricing Program Products and Pricing"
    #fields: [channel_name]
    sql_on: ${mn_pg_prc_adhoc_fact.pg_wid} = ${mn_big_award_flat_fact.pg_wid};;
  }


  join: mn_product_prc_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Pricing Program Products and Pricing"
    fields: [product_name, product_num]
    sql_on: ${mn_pg_prc_adhoc_fact.product_wid} = ${mn_product_prc_dim.product_wid};;
  }

  join: mn_combined_rebate_program_dim {
    type: left_outer
    view_label: "Rebate Program"
    relationship: many_to_one
    from: mn_combined_rebate_program_dim
    sql_on: ${mn_contract_header_dim.contract_wid} = ${mn_combined_rebate_program_dim.contract_wid} ;;
  }

  join: mn_rebate_program_qual_dim {
    type: left_outer
    view_label: "Rebate Program"
    relationship: many_to_one
    from: mn_rbt_prg_qual_flat_dim
    sql_on: ${mn_rebate_program_qual_dim.program_wid} = ${mn_combined_rebate_program_dim.program_wid} ;;
  }

  join: mn_rebate_program_payee_dim {
    type: left_outer
    relationship: many_to_one
    view_label: "Rebate Program Payee"
    from: mn_customer_dim
    fields: [customer_name, customer_num, member_info_type]
    sql_on: ${mn_rebate_program_payee_dim.customer_wid} = ${mn_combined_rebate_program_dim.payee_customer_wid};;
  }


}

explore: provider_historical_rebates {
  label: "Historical Rebates"
  from: mn_discount_bridge_fact
  view_name: mn_discount_bridge_fact

  sql_always_where: ${mn_discount_bridge_fact.is_historical_flag}='N'
                    AND (${mn_discount_bridge_fact.ds_line_ref_num} NOT NULL OR ${mn_discount_bridge_fact.ids_line_ref_num} IS NOT NULL
                          OR ${mn_discount_bridge_fact.cs_line_ref_num} IS NOT NULL OR ${mn_discount_bridge_fact.rebate_module_type} = 'INCENTV') ;;

  join: mn_soldto_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Sold To Customer"
    #fields: [full_name]
    sql_on: ${mn_discount_bridge_fact.sold_to_customer_wid} = ${mn_soldto_customer_dim.customer_wid};;
  }

  join: mn_billto_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Bill To Customer"
    #fields: [full_name]
    sql_on: ${mn_discount_bridge_fact.bill_to_customer_wid} = ${mn_soldto_customer_dim.customer_wid};;
  }

  join: mn_product_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Rebate Product"
    #fields: [full_name]
    sql_on: ${mn_discount_bridge_fact.product_wid} = ${mn_soldto_customer_dim.customer_wid};;
  }
}

explore: provider_rebates{
  label: "Rebates"
  from: mn_contract_header_dim
  view_name: mn_contract_header_dim
  extends: [mn_contract_header_dim_adhoc_base,
              mn_combined_rebate_program_dim_base,
              mn_payment_package_dim_base,
              mn_rebate_payment_fact_base,
              mn_paid_rebate_lines_base]
  hidden: no

  sql_always_where: ${mn_contract_header_dim.latest_flag} = 'Y' and ${mn_ctrt_type_dim.ctrt_type_name} IN ('FSS','IDN','Independent','Institutional','Master','PHS','Purchase Based') ;;

  join: mn_combined_rebate_program_dim {
    type: left_outer
    view_label: "Rebate Program"
    relationship: many_to_one
    from: mn_combined_rebate_program_dim
    sql_on: ${mn_contract_header_dim.contract_wid} = ${mn_combined_rebate_program_dim.contract_wid}
            AND: ${mn_combined_rebate_program_dim.latest_flag} = 'Y' ;;
  }

  join: mn_rebate_payment_fact {
    type: left_outer
    view_label: "Rebate Payment"
    relationship: many_to_one
    from: mn_rebate_payment_fact
    sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rebate_payment_fact.rebate_program_wid};;
  }

  join: mn_payment_package_dim {
    type: left_outer
    view_label: "Rebate Payment Package"
    relationship: many_to_one
    from: mn_payment_package_dim
    sql_on: ${mn_rebate_payment_fact.pymt_pkg_wid} = ${mn_payment_package_dim.pymt_pkg_wid};;
  }

  join: mn_discount_bridge_fact {
    type: left_outer
    view_label: "Rebate Line"
    relationship: many_to_one
    from: mn_discount_bridge_fact
    sql_on: ${mn_rebate_payment_fact.rebate_pmt_wid} = ${mn_discount_bridge_fact.rebate_pmt_wid}
            AND ${mn_discount_bridge_fact.is_historical_flag}='N'
            AND (${mn_discount_bridge_fact.ds_line_ref_num} NOT NULL OR ${mn_discount_bridge_fact.ids_line_ref_num} IS NOT NULL OR ${mn_discount_bridge_fact.cs_line_ref_num} IS NOT NULL OR ${mn_discount_bridge_fact.rebate_module_type} = 'INCENTV');;
  }

  join: mn_rbt_prg_ben_flat_dim {
    type: left_outer
    view_label: "Rebate Program Benefit"
    relationship: many_to_one
    from: mn_rbt_prg_ben_flat_dim
    sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rbt_prg_ben_flat_dim.program_wid};;
  }

  join: mn_shipto_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Ship To Customer"
    #fields: [full_name]
    sql_on: ${mn_discount_bridge_fact.ship_to_customer_wid} = ${mn_shipto_customer_dim.customer_wid};;
  }

  join: ship_to_customer_ids {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_ids_dim
    view_label: "Ship to Customer"
    fields: [id_num, id_type]
    sql_on: ${mn_discount_bridge_fact.sold_to_customer_wid}=${ship_to_customer_ids.customer_wid};;
  }

  join: mn_soldto_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Sold To Customer"
    #fields: [full_name]
    sql_on: ${mn_discount_bridge_fact.sold_to_customer_wid} = ${mn_soldto_customer_dim.customer_wid};;
  }

  join: sold_to_customer_ids {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_ids_dim
    view_label: "Sold to Customer"
    fields: [id_num, id_type]
    sql_on: ${mn_discount_bridge_fact.sold_to_customer_wid}=${sold_to_customer_ids.customer_wid};;
  }

   join: mn_committed_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Rebate Payment Committed Customer"
    sql_on: ${mn_combined_rebate_program_dim.customer_wid} = ${mn_committed_customer_dim.customer_wid};;
  }

  join: mn_product_eff_attr_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_product_eff_attr_fact
    view_label: "Product EDA"
    sql_on: ${mn_discount_bridge_fact.product_wid} = ${mn_product_eff_attr_fact.product_wid}
      AND (${mn_discount_bridge_fact.inv_date_wid} BETWEEN ${mn_product_eff_attr_fact.eff_start_date} AND ${mn_product_eff_attr_fact.eff_end_date});;
  }

  join: mn_erp_payment_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_erp_payment_fact
    view_label: "ERP Payment Fact"
    sql_on: ${mn_discount_bridge_fact.rebate_pmt_wid} = ${mn_erp_payment_fact.rebate_pmt_wid};;
  }

  join: mn_product_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Rebate Benefit Product"
    sql_on: ${mn_discount_bridge_fact.product_wid} = ${mn_product_dim.product_wid};;
  }
}

explore: provider_estimated_rebates{
  label: "Estimated Rebates"
  from: mn_contract_header_dim
  view_name: mn_contract_header_dim
  extends: [mn_contract_header_dim_adhoc_base,
    mn_combined_rebate_program_dim_base,
    mn_payment_package_dim_base,
    mn_paid_rebate_lines_base]
  hidden: no

  sql_always_where: ${mn_contract_header_dim.latest_flag} = 'Y' and ${mn_ctrt_type_dim.ctrt_type_name} IN ('FSS','IDN','Independent','Institutional','Master','PHS','Purchase Based') ;;

  join: mn_combined_rebate_program_dim {
    type: left_outer
    view_label: "Rebate Program"
    relationship: many_to_one
    from: mn_combined_rebate_program_dim
    sql_on: ${mn_contract_header_dim.contract_wid} = ${mn_combined_rebate_program_dim.contract_wid}
            AND ${mn_combined_rebate_program_dim.latest_flag} = 'Y' ;;
  }

  join: mn_est_rebate_pmt_prod_map {
    type: left_outer
    view_label: "Estimated Rebate Payment Product Map"
    relationship: many_to_one
    from: mn_est_rebate_pmt_prod_map
    fields: []
    sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_est_rebate_pmt_prod_map.program_wid};;
  }

  join: mn_est_rebate_payment_fact {
    type: left_outer
    view_label: "Estimated Rebate Payment"
    relationship: many_to_one
    from: mn_est_rebate_payment_fact
    sql_on: ${mn_est_rebate_pmt_prod_map.estimate_pmt_wid} = ${mn_est_rebate_payment_fact.estimate_pmt_wid};;
  }

  join: mn_payment_package_dim {
    type: left_outer
    view_label: "Rebate Payment Package"
    relationship: many_to_one
    from: mn_payment_package_dim
    sql_on: ${mn_est_rebate_payment_fact.pymt_pkg_wid} = ${mn_payment_package_dim.pymt_pkg_wid};;
  }

  join: mn_discount_bridge_fact {
    type: left_outer
    view_label: "Rebate Line"
    relationship: many_to_one
    from: mn_discount_bridge_fact
    sql_on: ${mn_est_rebate_payment_fact.estimate_pmt_wid} = ${mn_discount_bridge_fact.rebate_pmt_wid}
            AND ${mn_discount_bridge_fact.is_historical_flag}='N' ;;
  }

  join: mn_rbt_prg_ben_flat_dim {
    type: left_outer
    view_label: "Rebate Program Benefit"
    relationship: many_to_one
    from: mn_rbt_prg_ben_flat_dim
    sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rbt_prg_ben_flat_dim.program_wid};;
  }

  join: mn_shipto_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Ship To Customer"
    #fields: [full_name]
    sql_on: ${mn_discount_bridge_fact.ship_to_customer_wid} = ${mn_shipto_customer_dim.customer_wid};;
  }

  join: ship_to_customer_ids {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_ids_dim
    view_label: "Ship to Customer"
    fields: [id_num, id_type]
    sql_on: ${mn_discount_bridge_fact.sold_to_customer_wid}=${ship_to_customer_ids.customer_wid};;
  }

  join: mn_soldto_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Sold To Customer"
    #fields: [full_name]
    sql_on: ${mn_discount_bridge_fact.sold_to_customer_wid} = ${mn_soldto_customer_dim.customer_wid};;
  }

  join: sold_to_customer_ids {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_ids_dim
    view_label: "Sold to Customer"
    fields: [id_num, id_type]
    sql_on: ${mn_discount_bridge_fact.sold_to_customer_wid}=${sold_to_customer_ids.customer_wid};;
  }

  join: mn_committed_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Rebate Payment Committed Customer"
    sql_on: ${mn_combined_rebate_program_dim.customer_wid} = ${mn_committed_customer_dim.customer_wid};;
  }

  join: mn_product_eff_attr_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_product_eff_attr_fact
    view_label: "Product EDA"
    sql_on: ${mn_discount_bridge_fact.product_wid} = ${mn_product_eff_attr_fact.product_wid}
      AND (${mn_discount_bridge_fact.inv_date_wid} BETWEEN ${mn_product_eff_attr_fact.eff_start_date} AND ${mn_product_eff_attr_fact.eff_end_date});;
  }

  join: mn_erp_payment_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_erp_payment_fact
    view_label: "ERP Payment Fact"
    sql_on: ${mn_discount_bridge_fact.rebate_pmt_wid} = ${mn_erp_payment_fact.rebate_pmt_wid};;
  }

  join: mn_product_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Rebate Benefit Product"
    sql_on: ${mn_discount_bridge_fact.product_wid} = ${mn_product_dim.product_wid};;
  }
}

explore: mn_combined_sale_fact {
  label: "Sales"
  extends: [mn_contract_header_dim_base, mn_combined_product_group_dim_base]
  from:  mn_combined_sale_fact
  view_name: mn_combined_sale_fact
  #fields: [ALL_FIELDS*,-mn_contract_author_dim.mn_user_all_visible_fields*]
  hidden: no

  view_label: "Sales Data"

  join: contracted_customer {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Pricing Contract Customer"
    sql_on: ${mn_combined_sale_fact.customer_wid} = ${contracted_customer.customer_wid};;
  }

  join: contracted_customer_ids {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_ids_dim
    view_label: "Pricing Contract Customer"
    sql_on: ${mn_combined_sale_fact.customer_wid} = ${contracted_customer_ids.customer_wid};;
  }

  join: wholesaler {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    sql_on: ${mn_combined_sale_fact.distr_wid} = ${wholesaler.customer_wid};;
    sql_where:  ${wholesaler.member_info_type} =  'Wholesaler'  ;;
  }

  join: wholesaler_customer_ids {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_ids_dim
    sql_on: ${mn_combined_sale_fact.distr_wid}=${wholesaler_customer_ids.customer_wid};;
    sql_where:  ${wholesaler.member_info_type} =  'Wholesaler'  ;;
    view_label: "Wholesaler"
    fields: [id_num, id_type]
  }

  join: parent_wholesaler {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    sql_on: ${mn_combined_sale_fact.parent_distr_wid} = ${parent_wholesaler.customer_wid};;
    sql_where:  ${parent_wholesaler.member_info_type} =  'Wholesaler'  ;;
  }

  join: sold_to_customer {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    sql_on: ${mn_combined_sale_fact.sold_to_customer_wid} = ${sold_to_customer.customer_wid};;
  }

  join: sold_to_customer_ids {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_ids_dim
    view_label: "Sold to Customer"
    fields: [id_num, id_type]
    sql_on: ${mn_combined_sale_fact.sold_to_customer_wid}=${sold_to_customer_ids.customer_wid};;
  }

  join: ship_to_customer {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    sql_on: ${mn_combined_sale_fact.ship_to_customer_wid} = ${ship_to_customer.customer_wid};;
  }

  join: ship_to_customer_ids {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_ids_dim
    view_label: "Ship to Customer"
    fields: [id_num, id_type]
    sql_on: ${mn_combined_sale_fact.ship_to_customer_wid}=${ship_to_customer_ids.customer_wid};;
  }

  join: bill_to_customer {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    sql_on: ${mn_combined_sale_fact.bill_to_customer_wid} = ${bill_to_customer.customer_wid};;
  }

  join: bill_to_customer_ids {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_ids_dim
    view_label: "Bill to Customer"
    fields: [id_num, id_type]
    sql_on: ${mn_combined_sale_fact.bill_to_customer_wid}=${bill_to_customer_ids.customer_wid};;
  }

  join: mn_contract_header_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_contract_header_dim
    view_label: "Pricing Contract"
    sql_on: ${mn_combined_sale_fact.contract_wid} = ${mn_contract_header_dim.contract_wid};;
  }

  join: mn_product_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Sold Product"
    sql_on: ${mn_combined_sale_fact.product_wid} = ${mn_product_dim.product_wid};;
  }

  join: mn_combined_product_group_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_combined_product_group_dim
    view_label: "Pricing Program"
    sql_on: ${mn_combined_sale_fact.pg_wid} = ${mn_combined_product_group_dim.pg_wid};;
  }

  join: product_eff_attr_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_product_eff_attr_fact_ext
    view_label: "Sold Product"
    fields: [Product_EDA_Attributes*]
    sql_on: ${mn_combined_sale_fact.product_wid} = ${product_eff_attr_fact.product_wid}
            AND (${mn_combined_sale_fact.invoice_date} BETWEEN ${product_eff_attr_fact.eff_start_date} AND ${product_eff_attr_fact.eff_end_date});;
  }

  join: mn_user_access_sale_map {
    type: inner
    relationship: many_to_one
    from: mn_user_org_map
    view_label: "User Access"
    fields: []
    sql_on: ${mn_combined_sale_fact.org_wid} = ${mn_user_access_sale_map.org_wid};;
  }

  ### This Part is to modify views retrieved through extending
  join: mn_contract_author_dim {
    #fields: [mn_contract_author_dim.fname,mn_contract_author_dim.lname]
    view_label: "Pricing Contract Author"
  }

  join: mn_contract_srep_dim {
    view_label: "Pricing Contract Sales Rep"
  }

  join: mn_ctrt_domain_dim {
    view_label: "Pricing Contract Domain"
  }

  join: mn_additional_delegate_dim  {
    fields: []
  }

  join: mn_customer_owner_dim  {
    fields: []
  }

  join: mn_ctrt_status_dim {
      view_label: "Pricing Contract Status"
  }

  join: mn_ctrt_type_dim {
      view_label: "Pricing Contract Type"
  }

  join: mn_ctrt_sub_type_dim {
      view_label: "Pricing Contract Subtype"
  }

  join: mn_price_list_dim {
      view_label: "Pricing Program Price List"
      fields: [price_list_name]
  }
}
