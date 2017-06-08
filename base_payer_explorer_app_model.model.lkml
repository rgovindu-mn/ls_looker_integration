connection: "oracle_rds_ls"

include: "*.view.lkml"         # include all views in this project
# include: "*.dashboard.lookml"  # include all dashboards in this project
include: "base_ls_explores.model.lkml"

label: "Payer Explorer"


explore: mn_contract_header_dim {

  label: "Contracts"

  extends: [mn_contract_header_dim_adhoc_base, mn_contract_header_dim_secure_base]

  from: mn_contract_header_dim
  sql_always_where: ${mn_contract_header_dim.latest_flag} = 'Y' ;;
  view_label: "Contract"
  hidden: no




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
