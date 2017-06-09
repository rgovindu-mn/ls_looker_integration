include: "db_connection.model.lkml"
# connection: "oracle_rds_ls"

include: "base_mn_user_access_map.view.lkml"
include: "base_mn_contract_header_dim.view.lkml"
include: "base_mn_user_dim.view.lkml"
include: "base_mn_ctrt_status_dim.view.lkml"
include: "base_mn_ctrt_domain_dim.view.lkml"
include: "base_mn_ctrt_type_dim.view.lkml"
include: "base_mn_ctrt_sub_type_dim.view.lkml"
include: "base_mn_customer_dim.view.lkml"
include: "base_mn_product_group_dim.view.lkml"
include: "base_mn_bus_segment_dim.view.lkml"
include: "base_mn_price_list_dim.view.lkml"
include: "base_mn_prc_method_dim.view.lkml"
include: "base_mn_user_org_map.view.lkml"
include: "base_mn_combined_rebate_program_dim.view.lkml"
include: "base_mn_accrual_type_dim.view.lkml"
include: "base_mn_pmt_type_dim.view.lkml"
include: "base_mn_program_type_dim.view.lkml"
include: "base_mn_pmt_mth_type_dim.view.lkml"
include: "base_mn_ctrt_elig_cot_map.view.lkml"
include: "base_mn_cot_dim.view.lkml"
include: "base_mn_ctrt_elig_cot_map.view.lkml"
include: "base_mn_customer_cot_dim.view.lkml"
include: "base_mn_org_dim.view.lkml"
include: "base_mn_distrib_mthd_dim.view.lkml"

include: "base_mn_rbt_prog_qual_ben_dim.view.lkml"
include: "base_mn_rbt_prog_qual_ben_sd_rpt.view.lkml"

explore: mn_rebate_prog_qual_dim_base {

  from: mn_rbt_prog_qual_ben_dim
  view_name: mn_rbt_prog_qual_ben_dim
  hidden: yes
  sql_always_where: ${mn_rbt_prog_qual_ben_dim.is_qual_component} = 'Y';;
  view_label: "Rebate Program Qualification"

  join: mn_rbt_prog_qual_ben_sd_rpt {
    type: left_outer
    relationship: one_to_many
    from: mn_rbt_prog_qual_ben_sd_rpt
    view_label: "Rebate Program Qualification"
    #fields: [full_name]
    sql_on: ${mn_rbt_prog_qual_ben_dim.program_qual_ben_wid} = ${mn_rbt_prog_qual_ben_sd_rpt.program_qual_ben_wid};;
  }
  fields: [ALL_FIELDS*, -mn_rbt_prog_qual_ben_sd_rpt.rebate_program_ben_sd_rpt_additional_fields_set*]
}

explore: mn_rebate_prog_ben_dim_base {

  from: mn_rbt_prog_qual_ben_dim
  view_name: mn_rbt_prog_qual_ben_dim
  hidden: yes
  sql_always_where: ${mn_rbt_prog_qual_ben_dim.is_qual_component} = 'N';;
  view_label: "Rebate Program Benefit"

  join: mn_rbt_prog_qual_ben_sd_rpt {
    type: left_outer
    relationship: one_to_many
    from: mn_rbt_prog_qual_ben_sd_rpt
    view_label: "Rebate Program Benefit"
    #fields: [full_name]
    sql_on: ${mn_rbt_prog_qual_ben_dim.program_qual_ben_wid} = ${mn_rbt_prog_qual_ben_sd_rpt.program_qual_ben_wid};;
  }
}

# explore: mn_rebate_prog_qual_dim {
#   extends: [mn_rebate_prog_qual_dim_base]
#   hidden: no
# }

# explore: mn_rebate_prog_ben_dim {
#   extends: [mn_rebate_prog_ben_dim_base]
#   hidden: no
# }
