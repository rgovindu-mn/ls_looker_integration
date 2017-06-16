include: "base_mn_rbt_prog_ben_prod_map.view.lkml"

view: mn_rbt_prog_ben_prod_map_adhoc_ext {
  extends: [mn_rbt_prog_ben_prod_map]


  dimension: mco_pp_cap_perc {
    hidden: yes
  }

  dimension: mco_pp_threshold_perc {
    hidden: yes
  }

  dimension: mco_pp_total_disc_cap_perc {
    hidden: yes
  }


  ######## Derived Columns###################
  dimension_group: included_product_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql:  CASE WHEN ${excluded_flag} = 'N' THEN ${eff_start_raw} ELSE NULL END;;
  }

  dimension_group: included_product_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql:  CASE WHEN ${excluded_flag} = 'N' THEN ${eff_end_raw} ELSE NULL END;;
  }

  dimension: included_product_name {
    type: string
    sql: CASE WHEN ${excluded_flag} = 'N' THEN ${mn_rbt_prog_ben_prod_dim.product_name} ELSE NULL END;;
  }

  dimension: included_product_num {
    type: string
    sql: CASE WHEN ${excluded_flag} = 'N' THEN ${mn_rbt_prog_ben_prod_dim.product_num} ELSE NULL END;;
  }

  dimension_group: excluded_product_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql:  CASE WHEN ${excluded_flag} = 'Y' THEN ${eff_start_raw} ELSE NULL END;;
  }

  dimension_group: excluded_product_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql:  CASE WHEN ${excluded_flag} = 'Y' THEN ${eff_end_raw} ELSE NULL END;;
  }

  dimension: excluded_product_name {
    type: string
    sql: CASE WHEN ${excluded_flag} = 'Y' THEN ${mn_rbt_prog_ben_prod_dim.product_name} ELSE NULL END;;
  }

  dimension: excluded_product_num {
    type: string
    sql: CASE WHEN ${excluded_flag} = 'Y' THEN ${mn_rbt_prog_ben_prod_dim.product_num} ELSE NULL END;;
  }


  dimension: pg_name {
    type: string
    label: "Benefit Product From Price Program"
    sql: ${mn_rbt_prog_pg_dim.pg_name};;
  }

}
