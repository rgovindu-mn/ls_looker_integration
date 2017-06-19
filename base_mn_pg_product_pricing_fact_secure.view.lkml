include: "base_mn_pg_product_pricing_fact.view.lkml"

view: mn_pg_product_pricing_fact_secure {
    extends: [mn_pg_product_pricing_fact]


    dimension: access_user_wid {
      type: number
      sql: ${mn_user_access_pg_map.user_wid};;
    }


    dimension: access_user_name {
      type: string
      sql: ${mn_user_access_pg_map.user_name};;
    }

}
