include: "base_mn_pg_qual_ben_flat.view.lkml"
view: mn_pg_qual_ben_flat_ext {
  extends: [mn_pg_qual_ben_flat]

  dimension: period_wid {
    type: number
    hidden: yes
    sql: ${mn_cmpl_period_fact.period_wid} ;;
  }

  dimension: commit_tier {
    type: number
    sql: ${mn_cmpl_period_fact.commit_tier} ;;
  }

  dimension: tier_value {
    type: number
    hidden: yes
    value_format_name: decimal_0
    sql: CASE   when ${mn_cmpl_period_fact.commit_tier} = 1 then ${tier1_value}
                when ${mn_cmpl_period_fact.commit_tier} = 2 then ${tier2_value}
                when ${mn_cmpl_period_fact.commit_tier} = 3 then ${tier3_value}
                when ${mn_cmpl_period_fact.commit_tier} = 4 then ${tier4_value}
                when ${mn_cmpl_period_fact.commit_tier} = 5 then ${tier5_value}
                when ${mn_cmpl_period_fact.commit_tier} = 6 then ${tier6_value}
                when ${mn_cmpl_period_fact.commit_tier} = 7 then ${tier7_value}
                when ${mn_cmpl_period_fact.commit_tier} = 8 then ${tier8_value}
                when ${mn_cmpl_period_fact.commit_tier} = 9 then ${tier9_value}
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

# Measures

  measure: volume_shortfall {
    type: sum
    sql:
    case when ${component_type_flag} = 'Volume' and (${tier_value} > ${mn_cmpl_per_lines_fact.inv_qty})
    then ${tier_value} - ${mn_cmpl_per_lines_fact.inv_qty}
    end

    ;;
  }



}
