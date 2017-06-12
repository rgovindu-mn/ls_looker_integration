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

  sql_always_where:  ${mn_contract_header_dim.latest_flag} = 'Y' and  ;;


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


  join: mn_pg_pg_prc_adhoc_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_pg_product_pricing_fact_adhoc_ext
    view_label: "Products and Pricing"
    #fields: [channel_name]
    sql_on: ${mn_pg_pg_prc_adhoc_fact.pg_wid} = ${mn_product_group_dim.pg_wid}
    AND ${mn_pg_pg_prc_adhoc_fact.tier_idx}=1;;
  }

  join: mn_pg_pg_prc_fact_flat {
    type: left_outer
    relationship: many_to_one
    from: mn_pg_pg_prc_fact_flat
    view_label: "Products and Pricing"
    #fields: [channel_name]
    sql_on: ${mn_pg_pg_prc_adhoc_fact.pg_wid} = ${mn_pg_pg_prc_fact_flat.pg_wid};;
  }


  join: mn_big_award_flat_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_bid_award_flat_fact
    view_label: "Products and Pricing"
    #fields: [channel_name]
    sql_on: ${mn_pg_pg_prc_adhoc_fact.pg_wid} = ${mn_big_award_flat_fact.pg_wid};;
  }


  join: mn_product_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Products and Pricing"
    fields: [product_name, product_num]
    sql_on: ${mn_pg_pg_prc_adhoc_fact.product_wid} = ${mn_product_dim.product_wid};;
  }

}

explore: provider_rebate_contract{
  label: "Rebate Contracts"
  from: mn_contract_header_dim
  view_name: mn_contract_header_dim
  extends: [mn_contract_header_dim_adhoc_base,
              mn_combined_rebate_program_dim_base,
              mn_payment_package_dim_base,
              mn_rebate_payment_fact_base,
              mn_provider_rebate_lines_base]
  hidden: no

  sql_always_where: ${mn_contract_header_dim.latest_flag} = 'Y'  ;;

  join: mn_combined_rebate_program_dim {
    type: left_outer
    view_label: "Rebate Program"
    relationship: many_to_one
    from: mn_combined_rebate_program_dim
    sql_on: ${mn_contract_header_dim.contract_wid} = ${mn_combined_rebate_program_dim.contract_wid};;
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
    sql_on: ${mn_rebate_payment_fact.rebate_pmt_wid} = ${mn_discount_bridge_fact.rebate_pmt_wid};;
  }

  join: mn_rbt_prog_qual_ben_dim {
    type: left_outer
    view_label: "Rebate Program Benefit"
    relationship: many_to_one
    from: mn_rbt_prog_qual_ben_dim
    sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rbt_prog_qual_ben_dim.program_wid};;
    sql_where: (${mn_rbt_prog_qual_ben_dim.is_qual_component} = 'N' or ${mn_rbt_prog_qual_ben_dim.is_qual_component} IS NULL) ;;
  }

  join: mn_rbt_prog_qual_ben_sd_rpt {
    type: left_outer
    relationship: one_to_many
    from: mn_rbt_prog_qual_ben_sd_rpt
    view_label: "Rebate Program Benefit"
    #fields: [full_name]
    sql_on: ${mn_rbt_prog_qual_ben_dim.program_qual_ben_wid} = ${mn_rbt_prog_qual_ben_sd_rpt.program_qual_ben_wid};;
  }

  join: mn_customer_dim {
    type: left_outer
    view_label: "Rebate Payment Payee"
    relationship: many_to_one
    from: mn_customer_dim
    sql_on:  ${mn_rebate_payment_fact.payee_customer_wid} = ${mn_customer_cot_dim.customer_wid};;
  }

}

explore: mn_combined_sale_fact {
  label: "Sales"
  extends: [mn_contract_header_dim_base, mn_product_group_dim_base]
  from:  mn_combined_sale_fact
  view_name: mn_combined_sale_fact
  hidden: no

  view_label: "Sales Data"


  join: contracted_customer {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Contracted Customer"
    sql_on: ${mn_combined_sale_fact.customer_wid} = ${contracted_customer.customer_wid};;
  }

  join: contracted_customer_ids {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_ids_dim
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

  join: mn_product_group_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_group_dim
    view_label: "Pricing Program"
    sql_on: ${mn_combined_sale_fact.pg_wid} = ${mn_product_group_dim.pg_wid};;
  }

  join: mn_product_eff_attr_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_product_eff_attr_fact
    view_label: "Pricing Program"
    sql_on: ${mn_combined_sale_fact.product_wid} = ${mn_product_eff_attr_fact.product_wid}
            AND (${mn_combined_sale_fact.invoice_date} BETWEEN ${mn_product_eff_attr_fact.eff_start_date} AND ${mn_product_eff_attr_fact.eff_end_date});;
  }

  join: mn_user_access_sale_map {
    type: inner
    relationship: many_to_one
    from: mn_user_org_map
    view_label: "User Access"
    fields: []
    sql_on: ${mn_combined_sale_fact.org_wid} = ${mn_user_access_sale_map.org_wid};;
  }

}
