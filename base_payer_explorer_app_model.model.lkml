connection: "oracle_rds_ls"

include: "*.view.lkml"         # include all views in this project
# include: "*.dashboard.lookml"  # include all dashboards in this project

label: "Payer Explorer"


explore: mn_contract_header_dim {
  label: "Contracts"
  from: mn_contract_header_dim
  sql_always_where: $(${latest_flag} = 'Y';;
  view_label: "Contract"

  join: mn_ctrt_type_dim {
    type: inner
    relationship: many_to_one
    from: mn_ctrt_type_dim
    view_label: "Contract"
    sql_on: ${mn_contract_header_dim.contract_type_wid} = ${mn_ctrt_type_dim.ctrt_type_wid};;
    sql_where: upper(${mn_ctrt_type_dim.ctrt_type_name}) in ('MANAGED CARE','MEDICARE PART D','TRICARE') ;;
  }
  join: mn_ctrt_status_dim {
    type: inner
    relationship: many_to_one
    from: mn_ctrt_status_dim
    view_label: "Contract"
    sql_on: ${mn_contract_header_dim.contract_status_wid} = $(${mn_ctrt_status_dim.status_wid} ;;
  }
  join: mn_org_dim {
    type: inner
    relationship: many_to_one
    from: mn_org_dim
    view_label: "Org"
    sql_on: ${mn_contract_header_dim.org_wid} = ${mn_org_dim.org_wid} ;;
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
