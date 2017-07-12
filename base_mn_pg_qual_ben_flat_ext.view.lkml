#include: "base_mn_pg_qual_ben_flat_lkr.view.lkml"
 include: "base_mn_pg_qual_ben_flat.view.lkml"
 view: mn_pg_qual_ben_flat_ext {
 extends: [mn_pg_qual_ben_flat]

  dimension: period_wid {
    type: number
    hidden: yes
    sql: ${mn_cmpl_period_fact.period_wid} ;;
  }

    dimension: pg_tb_wid {
      primary_key: no
    }

    dimension: ext_pk_wid {
       type: string
      primary_key: yes
      sql: ${mn_cmpl_period_fact.period_wid}||'-'|| ${pg_tb_wid} ;;
    }


  dimension: commit_tier {
    type: number
    sql: ${mn_cmpl_period_fact.commit_tier} ;;
  }

  dimension: tier_value {
    type: number
    hidden: yes
    value_format_name: decimal_0
    sql: CASE   when mn_cmpl_period_fact.COMMIT_TIER = 1 then ${tier1_value}
                when mn_cmpl_period_fact.COMMIT_TIER = 2 then ${tier2_value}
                when mn_cmpl_period_fact.COMMIT_TIER = 3 then ${tier3_value}
                when mn_cmpl_period_fact.COMMIT_TIER = 4 then ${tier4_value}
                when mn_cmpl_period_fact.COMMIT_TIER = 5 then ${tier5_value}
                when mn_cmpl_period_fact.COMMIT_TIER = 6 then ${tier6_value}
                when mn_cmpl_period_fact.COMMIT_TIER = 7 then ${tier7_value}
                when mn_cmpl_period_fact.COMMIT_TIER = 8 then ${tier8_value}
                when mn_cmpl_period_fact.COMMIT_TIER = 9 then ${tier9_value}

      ELSE NULL END ;;
  }

  dimension: tier_comp_volume {
    type: number
    hidden: yes
    sql:
    case when ${component_type_flag} = 'Volume'
    then ${tier_value}
    end
    ;;

  }

  dimension: tier_comp_revenue {
    type: number
    hidden: yes
    sql:
    case when ${component_type_flag} = 'Revenue'
    then ${tier_value}
    end
    ;;

    }
 # This does not work.
  measure: volume_shortfall_old {
    type: sum
    hidden: yes
    sql:
    case when ${component_type_flag} = 'Volume' and (${tier_value} > ${mn_cmpl_per_lines_fact.inv_qty})
    then ${tier_value} - ${mn_cmpl_per_lines_fact.inv_qty}
    end
    ;;
  }


  measure: expected_qty_value_volume {
    type: sum
    sql:
    case when ${component_type_flag} = 'Volume'
      then ${tier_value}
    end

    ;;
  }

  measure: expected_qty_value_revenue {
    type: sum
    sql:
    case when ${component_type_flag} = 'Revenue'
      then ${tier_value}
    end

    ;;
  }

  measure: volume_shortfall {
    type: number
    sql:
    case when (${expected_qty_value_volume} > ${mn_cmpl_per_lines_fact.actual_qty_value})
    then ${expected_qty_value_volume} - ${mn_cmpl_per_lines_fact.actual_qty_value}
    end

    ;;
  }

  measure: revenue_shortfall {
    type: number
    sql:
    case when (${expected_qty_value_revenue} > ${mn_cmpl_per_lines_fact.actual_qty_value})
    then ${expected_qty_value_revenue} - ${mn_cmpl_per_lines_fact.actual_qty_value}
    end

    ;;
  }

  measure: volume_surplus {
    type: number
    sql:
    case when (${expected_qty_value_volume} < ${mn_cmpl_per_lines_fact.actual_qty_value})
    then  ${mn_cmpl_per_lines_fact.actual_qty_value} - ${expected_qty_value_volume}
    end

    ;;
  }

  measure: revenue_surplus {
    type: number
    sql:
    case when (${expected_qty_value_revenue} < ${mn_cmpl_per_lines_fact.actual_qty_value})
    then ${mn_cmpl_per_lines_fact.actual_qty_value} - ${expected_qty_value_revenue}
    end

    ;;
  }




}
