connection: "oracle_rds_ls"

include: "base_ls_explores.model.lkml"

explore: mn_payer_rebate_lines_base {

  from:  mn_discount_bridge_fact
  view_name: mn_discount_bridge_fact
  sql_always_where: ${mn_discount_bridge_fact.mco_line_ref_num} is not null or
                    upper(${mn_discount_bridge_fact.rebate_module_type}) = 'MCO' ;;
  hidden: yes

  join: mn_rebate_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_rebate_type_dim
    view_label: "Payer Rebate Lines Rebate Type"
    sql_on: ${mn_discount_bridge_fact.rebate_type_wid} = ${mn_rebate_type_dim.rebate_type_wid};;
  }

  join: mn_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Payer Rebate Lines Payee"
    sql_on: ${mn_discount_bridge_fact.payee_wid} = ${mn_customer_dim.customer_wid};;
  }
}
