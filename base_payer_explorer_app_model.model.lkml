connection: "oracle_rds_ls"

include: "*.view.lkml"         # include all views in this project
# include: "*.dashboard.lookml"  # include all dashboards in this project
include: "base_ls_explores.model.lkml"

label: "Payer Explorer"


explore: mn_contract_header_dim {

  label: "Contracts"

  extends: [mn_contract_header_dim_base, mn_contract_header_dim_secure_base]

  from: mn_contract_header_dim
  sql_always_where: ${mn_contract_header_dim.latest_flag} = 'Y' ;;
  view_label: "Contract"
  hidden: no

  join: mn_org_dim {
    type: inner
    relationship: many_to_one
    from: mn_org_dim
    view_label: "Org"
    sql_on: ${mn_contract_header_dim.org_wid} = ${mn_org_dim.org_wid} ;;
  }

  join: mn_customer_cot_dim {
    type: left_outer
    relationship: many_to_many
    from: mn_customer_cot_dim
    view_label: "Customer COT"
    sql_on: ${mn_contract_header_dim.owner_wid} = ${mn_customer_cot_dim.customer_wid} ;;
  }

  join: mn_cot_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_cot_dim
    view_label: "Customer COT"
    sql_on: ${mn_customer_cot_dim.cot_wid}.owner_wid} = ${mn_cot_dim.cot_wid}
            and ${mn_customer_cot_dim.eff_start_date} <= ${mn_contract_header_dim.implemented_date}
            and ${mn_customer_cot_dim.eff_end_date} <= ${mn_contract_header_dim.implemented_date} ;;
  }
}

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
