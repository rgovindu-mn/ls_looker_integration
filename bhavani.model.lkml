connection: "oracle_rds_ls"

include: "base_mn_rebate_program_sd_rpt.view.lkml"
include: "base_mn_rebate_program_dim.view.lkml"
# include: "base_mn_contract_header_dim.view.lkml"
include: "base_mn_accrual_type_dim.view.lkml"
include: "base_mn_customer_dim.view.lkml"
include: "base_mn_program_type_dim.view.lkml"
include: "base_mn_pmt_type_dim.view.lkml"
include: "base_mn_pmt_mth_type_dim.view.lkml"
include: "base_mn_contract_fact.view.lkml"

  explore:  mn_rebate_program_sd_rpt {
    extends: [mn_rebate_program_sd_rpt_base]
    label: "SD Rebate Program"
    hidden: no
  }

 explore: mn_rebate_program_sd_rpt_base {

  from: mn_rebate_program_sd_rpt
  view_name: mn_rebate_program_sd_rpt

  sql_always_where:  ${mn_contract_fact.record_type} = '2' ;;

  hidden: yes

   join: mn_rebate_program_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_rebate_program_dim
    view_label: "Rebate Program"
    #fields: [full_name]
    sql_on: ${mn_rebate_program_sd_rpt.program_wid} = ${mn_rebate_program_dim.program_wid};;
  }

  join: mn_contract_fact {
    type: left_outer
    relationship: many_to_one
    from: mn_contract_fact
    fields: [mn_contract_fact.contract_wid]
    view_label: "Rebate Program"
    sql_on: ${mn_rebate_program_sd_rpt.program_wid} = ${mn_contract_fact.program_wid};;

  }

#   join: mn_contract_header_dim {
#     type: left_outer
#     relationship: many_to_one
#     from: mn_contract_header_dim
#     view_label: "Rebate Program"
#     fields: [full_name]
#     sql_on: ${mn_contract_header_dim.contract_wid} = ${mn_contract_fact.contract_wid};;
#   }

  join: mn_accrual_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_accrual_type_dim
    view_label: "Rebate Program Accrual Type"
    #fields: [full_name]
    sql_on: ${mn_rebate_program_sd_rpt.accrual_type_wid} = ${mn_accrual_type_dim.accrual_type_wid};;
  }

  join: mn_payee_customer_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim
    view_label: "Rebate Program Payee"
    #fields: [full_name]
    sql_on: ${mn_rebate_program_sd_rpt.customer_wid} = ${mn_payee_customer_dim.customer_wid};;
  }

  join: mn_program_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_program_type_dim
    view_label: "Rebate Program Type"
    #fields: [full_name]
    sql_on: ${mn_rebate_program_sd_rpt.program_type_wid} = ${mn_program_type_dim.program_type_wid};;
  }

  join: mn_pmt_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_pmt_type_dim
    view_label: "Rebate Program Payment Type"
    #fields: [full_name]
    sql_on: ${mn_rebate_program_sd_rpt.payment_type_wid} = ${mn_pmt_type_dim.pmt_type_wid};;
  }

  join: mn_pmt_mth_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_pmt_mth_type_dim
    view_label: "Rebate Program Payment Method Type"
    sql_on: ${mn_rebate_program_sd_rpt.pmt_mth_type_wid} = ${mn_pmt_mth_type_dim.pmt_mth_type_wid};;

  }
 }
