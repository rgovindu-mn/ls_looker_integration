include: "base_mn_contract_header_dim.view.lkml"

view: mn_contract_header_dim_secure {
  extends: [mn_contract_header_dim]

  dimension: access_user_wid {
    type: string
    sql: ${mn_user_access_ctrt_map.user_wid};;
  }


  dimension: access_user_name {
    type: string
    sql: ${mn_user_access_ctrt_map.user_name};;
  }

}
