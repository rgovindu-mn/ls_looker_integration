include: "base_ls_explores.model.lkml"

include: "*.view.lkml"         # include all views in this project
# include: "*.dashboard.lookml"  # include all dashboards in this project


label: "Payer Explorer"


explore: mn_contract_header_dim {
  label: "Payer Contracts"
  from: mn_contract_header_dim
  view_name: mn_contract_header_dim

  extends: [mn_contract_header_dim_secure_base,
    mn_contract_header_dim_adhoc_base, mn_combined_rebate_program_dim_base
    ]
  hidden: no

  sql_always_where: ${mn_contract_header_dim.latest_flag} = 'Y' ;;

  join: mn_combined_rebate_program_dim {
      type: left_outer
      view_label: "Rebate Program"
      relationship: many_to_one
      from: mn_combined_rebate_program_dim
      sql_on: ${mn_contract_header_dim.contract_wid} = ${mn_combined_rebate_program_dim.contract_wid};;
  }




}
