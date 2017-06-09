include: "db_connection.model.lkml"

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




}
