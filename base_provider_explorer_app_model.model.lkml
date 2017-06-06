connection: "oracle_rds_ls"

include: "*.view.lkml"         # include all views in this project
#include: "*.dashboard.lookml"  # include all dashboards in this project

label: "Provider Explorer"


explore: mn_combined_sale_fact {
  label: "Sales"
  from:  mn_combined_sale_fact
  view_label: "Sales Data"

  join: contracted_customer {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
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
    sql_on: ${mn_combined_sale_fact.bill_to_customer_wid}=${bill_to_customer_ids.customer_wid};;
  }

  join: mn_contract_header_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_contract_header_dim
    view_label: "Pricing Contract"
    sql_on: ${mn_combined_sale_fact.contract_wid} = ${mn_contract_header_dim.contract_wid};;
  }

  join: mn_ctrt_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_ctrt_type_dim
    view_label: "Pricing Contract Type"
    sql_on: ${mn_contract_header_dim.contract_type_wid} = ${mn_ctrt_type_dim.ctrt_type_wid};;
  }

  join: mn_ctrt_status_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_ctrt_status_dim
    view_label: "Pricing Contract Status"
    sql_on: ${mn_contract_header_dim.contract_status_wid} = ${mn_ctrt_status_dim.status_wid};;
  }

  join: mn_ctrt_domain_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_ctrt_domain_dim
    view_label: "Pricing Contract Domain"
    sql_on: ${mn_contract_header_dim.contract_domain_wid} = ${mn_ctrt_domain_dim.domain_wid};;
  }

  join: mn_ctrt_sub_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_ctrt_sub_type_dim
    view_label: "Pricing Contract Sub Type"
    sql_on: ${mn_contract_header_dim.contract_sub_type_wid} = ${mn_ctrt_sub_type_dim.ctrt_sub_type_wid};;
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

  join: mn_product_eff_attr_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_product_eff_attr_fact
    view_label: "Product Effective Dated Attributes"
    sql_on: ${mn_combined_sale_fact.product_wid} = ${mn_product_eff_attr_fact.product_wid}
            AND (${mn_combined_sale_fact.invoice_date} BETWEEN ${mn_product_eff_attr_fact.eff_start_date} AND ${mn_product_eff_attr_fact.eff_end_date});;
  }

  join: mn_user_access_map {
    type: inner
    relationship: many_to_one
    from: mn_user_access_map
    view_label: "User Access"
    fields: []
    sql_on: ${mn_contract_header_dim.owner_wid} = ${mn_user_access_map.customer_wid};;
  }
}
