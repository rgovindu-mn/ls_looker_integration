include: "base_ls_explores.model.lkml"

include: "*.view.lkml"         # include all views in this project
# include: "*.dashboard.lookml"  # include all dashboards in this project


label: "Payer Explorer"


explore: mn_contract_header_dim {
  label: "Payer Contracts"
  from: mn_contract_header_dim
  view_name: mn_contract_header_dim

  extends: [mn_contract_header_dim_secure_base,
    mn_contract_header_dim_adhoc_base, mn_combined_rebate_program_dim_base]
  hidden: no

  sql_always_where: ${mn_contract_header_dim.latest_flag} = 'Y' ;;

  join: mn_combined_rebate_program_dim {
      type: left_outer
      view_label: "Rebate Program"
      relationship: many_to_one
      from: mn_combined_rebate_program_dim
      sql_on: ${mn_contract_header_dim.contract_wid} = ${mn_combined_rebate_program_dim.contract_wid} ;;
  }

    join: mn_rbt_prog_qual_dim {
      type: left_outer
      relationship: many_to_one
      from: mn_rbt_prog_qual_ben_dim
      view_label: "Rebate Program Qualification"
      sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rbt_prog_qual_dim.program_wid} and (
      ${mn_rbt_prog_qual_dim.is_qual_component} = 'Y' or ${mn_rbt_prog_qual_dim.is_qual_component} is null) ;;
    }

    join: mn_rbt_prog_qual_sd_rpt {
      type: left_outer
      relationship: many_to_one
      from: mn_rbt_prog_qual_ben_sd_rpt
      view_label: "Rebate Program Qualification"
      #fields: [full_name]
      sql_on: ${mn_rbt_prog_qual_dim.program_qual_ben_wid} = ${mn_rbt_prog_qual_sd_rpt.program_qual_ben_wid};;
      fields: [- mn_rbt_prog_qual_sd_rpt.rebate_program_ben_sd_rpt_additional_fields_set*]
    }

  join: mn_rbt_prog_ben_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_prog_qual_ben_dim
    view_label: "Rebate Program Benefit"
    sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rbt_prog_ben_dim.program_wid} and (
      ${mn_rbt_prog_ben_dim.is_qual_component} = 'N' or ${mn_rbt_prog_ben_dim.is_qual_component} is null) ;;
  }

  join: mn_rbt_prog_ben_sd_rpt {
    type: left_outer
    relationship: many_to_one
    from: mn_rbt_prog_qual_ben_sd_rpt
    view_label: "Rebate Program Benefit"
    #fields: [full_name]
    sql_on: ${mn_rbt_prog_ben_dim.program_qual_ben_wid} = ${mn_rbt_prog_ben_sd_rpt.program_qual_ben_wid};;
  }

}
