connection: "oracle_rds_ls"

# include all views in this project
include: "base_mn_rebate_program_sd_rpt.view.lkml"
include: "base_mn_rebate_program_dim.view.lkml"
include: "base_mn_contract_header_dim.view.lkml"
include: "base_mn_accrual_type_dim.view.lkml"
include: "base_mn_customer_dim.view.lkml"
include: "base_mn_program_type_dim.view.lkml"
include: "base_mn_pmt_type_dim.view.lkml"
include: "base_mn_pmt_mth_type_dim.view.lkml"
include: "base_mn_contract_fact.view.lkml"

 explore: mn_rebate_program_sd_base {

  from: mn_rebate_program_sd_rpt
  view_name: mn_rebate_program_sd_rpt
  hidden: yes

   join: mn_rebate_program_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_rebate_program_dim
    view_label: "Rebate Program"
    #fields: [full_name]
    sql_on: ${mn_rebate_program_sd_rpt.program_wid} = ${mn_rebate_program_dim.program_wid};;
  }

  join: mn_contract_header_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_contract_header_dim
    view_label: "Rebate Program"
    #fields: [full_name]
    sql_on: ${mn_rebate_program_sd_rpt.contract_wid} = ${mn_contract_header_dim.contract_wid};;
  }

  join: mn_accrual_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_accrual_type_dim
    view_label: "Rebate Program"
    #fields: [full_name]
    sql_on: ${mn_rebate_program_sd_rpt.accrual_type_wid} = ${mn_accrual_type_dim.accrual_type_wid};;
  }

  join: mn_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Rebate Program"
    #fields: [full_name]
    sql_on: ${mn_rebate_program_sd_rpt.customer_wid} = ${mn_customer_dim.customer_wid};;
  }

  join: mn_program_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_program_type_dim
    view_label: "Rebate Program"
    #fields: [full_name]
    sql_on: ${mn_rebate_program_sd_rpt.program_type_wid} = ${mn_program_type_dim.program_type_wid};;
  }

  join: mn_pmt_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_pmt_type_dim
    view_label: "Rebate Program"
    #fields: [full_name]
    sql_on: ${mn_rebate_program_sd_rpt.payment_type_wid} = ${mn_pmt_type_dim.pmt_type_wid};;
  }

  join: mn_pmt_mth_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_pmt_mth_type_dim
    view_label: "Rebate Program"
    sql_on: ${mn_rebate_program_sd_rpt.pmt_mth_type_wid} = ${mn_pmt_mth_type_dim.pmt_mth_type_wid};;

  }

  join: mn_contract_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_contract_fact
    view_label: "Rebate Program"
    sql_on: ${mn_rebate_program_sd_rpt.program_wid} = ${mn_contract_fact.program_wid};;
    sql_where: ${mn_contract_fact.record_type} = '2' ;;

  }
 }
