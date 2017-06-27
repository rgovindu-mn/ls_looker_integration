include: "base_mn_pg_qual_ben_flat.view.lkml"
view: mn_pg_qual_ben_flat_ext {
  extends: [mn_pg_qual_ben_flat]

  measure: tier_value {
    type: sum
    value_format_name: decimal_0
    sql: CASE   when ${mn_cmpl_period_fact.COMMIT_TIER} = 1 then ${tier1_value}
                when ${mn_cmpl_period_fact.COMMIT_TIER} = 2 then ${tier2_value}
                when ${mn_cmpl_period_fact.COMMIT_TIER} = 3 then ${tier3_value}
                when ${mn_cmpl_period_fact.COMMIT_TIER} = 4 then ${tier4_value}
                when ${mn_cmpl_period_fact.COMMIT_TIER} = 5 then ${tier5_value}
                when ${mn_cmpl_period_fact.COMMIT_TIER} = 6 then ${tier6_value}
                when ${mn_cmpl_period_fact.COMMIT_TIER} = 7 then ${tier7_value}
                when ${mn_cmpl_period_fact.COMMIT_TIER} = 8 then ${tier8_value}
                when ${mn_cmpl_period_fact.COMMIT_TIER} = 9 then ${tier9_value}
      ELSE NULL END ;;
  }

}
