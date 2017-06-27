include: "base_mn_pg_qual_ben_flat.view.lkml"
view: mn_pg_qual_ben_flat_ext {
  extends: [mn_pg_qual_ben_flat]

#   derived_table: {
#     sql: SELECT
#     cpf.PERIOD_WID, cpf.COMMIT_TIER, cpf.PG_WID, tb.PG_TB_WID,
#     CASE  when cpf.COMMIT_TIER = 1 then tb.TIER1_VALUE
#           when cpf.COMMIT_TIER = 2 then tb.TIER2_VALUE
#           when cpf.COMMIT_TIER = 3 then tb.TIER3_VALUE
#           when cpf.COMMIT_TIER = 4 then tb.TIER4_VALUE
#           when cpf.COMMIT_TIER = 5 then tb.TIER5_VALUE
#           when cpf.COMMIT_TIER = 6 then tb.TIER6_VALUE
#           when cpf.COMMIT_TIER = 7 then tb.TIER7_VALUE
#           when cpf.COMMIT_TIER = 8 then tb.TIER8_VALUE
#           when cpf.COMMIT_TIER = 9 then tb.TIER9_VALUE
#       ELSE NULL END AS TIER_VALUE
#       from MN_CMPL_PERIOD_FACT_VW cpf
#       JOIN MN_PG_QUAL_BEN_DIM_VW tb ON cpf.PG_WID = tb.PG_WID
#     ;;
#   }

  dimension: period_wid {
    type: number
    sql: ${mn_cmpl_period_fact.period_wid} ;;
  }

  dimension: commit_tier {
    type: number
    sql: ${mn_cmpl_period_fact.commit_tier} ;;
  }


# ***** Measures
  dimension: tier_value {
    type: number
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
    sql:
    case when ${component_type_flag} = 'Volume'
    then ${tier_value}
    end
    ;;

  }

  dimension: tier_comp_revenue {
    type: number
    sql:
    case when ${component_type_flag} = 'Revenue'
    then ${tier_value}
    end
    ;;

    }

  measure: volume_shortfall {
    type: sum
    sql:
    case when ${component_type_flag} = 'Volume' and (${tier_value} > ${mn_cmpl_per_lines_fact.inv_qty})
    then ${tier_value} - ${mn_cmpl_per_lines_fact.inv_qty}
    end

    ;;
  }



}
