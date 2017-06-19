include: "base_mn_cmpl_period_fact.view.lkml"
view: mn_cmpl_period_fact_secure {
  extends: [mn_cmpl_period_fact]
  dimension: access_user_wid {
    type: number
    sql: ${mn_user_access_cmpl_map.user_wid};;
  }


  dimension: access_user_name {
    type: string
    sql: ${mn_user_access_cmpl_map.user_name};;
  }


}
