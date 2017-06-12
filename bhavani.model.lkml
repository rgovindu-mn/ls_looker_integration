connection: "oracle_rds_ls"

include: "base_ls_explores.model.lkml"

explore: mn_payer_rebate_lines_base {
  extends: [mn_paid_rebate_lines_base]
  sql_always_where: ${mn_discount_bridge_fact.mco_line_ref_num} is not null or
                    upper(${mn_discount_bridge_fact.rebate_module_type}) = 'MCO' ;;
  hidden: no

 join: mn_rebate_payment_fact {
   from: mn_rebate_payment_fact
   type: left_outer
   relationship: many_to_one
   sql_on: ${mn_rebate_payment_fact.pymt_pkg_wid} = ${mn_discount_bridge_fact.rebate_pmt_wid}  ;;
 }

 join: mn_rebate_payment_package_dim {
   from: mn_rebate_payment_package_dim
  type: left_outer
  relationship: many_to_one
  sql_on: ${mn_rebate_payment_fact.pymt_pkg_wid} = ${mn_rebate_payment_package_dim.pymt_pkg_wid} ;;
 }

join: mn_product_dim {
  from: mn_product_dim
  type: left_outer
  relationship: many_to_one
   sql_on: ${mn_discount_bridge_fact.product_wid} = ${mn_product_dim.product_wid} ;;
 }

#join:  mn_pla{}
}
