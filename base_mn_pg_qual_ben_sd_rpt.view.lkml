view: mn_pg_qual_ben_sd_rpt {
  sql_table_name: MN_PG_QUAL_BEN_SD_RPT_VW ;;

  dimension: baseline_period {
    type: string
    sql: ${TABLE}.BASELINE_PERIOD ;;
  }

  dimension: basis_type {
    type: string
    sql: ${TABLE}.BASIS_TYPE ;;
  }

  dimension: basis_unit {
    type: string
    sql: ${TABLE}.BASIS_UNIT ;;
  }

  dimension: config_description {
    type: string
    sql: ${TABLE}.CONFIG_DESCRIPTION ;;
  }

  dimension_group: date_created {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension_group: eff_end {
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
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension_group: eff_start {
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
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension: end_ver_num {
    type: string
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: int_price_reference {
    type: string
    sql: ${TABLE}.INT_PRICE_REFERENCE ;;
  }

  dimension: int_price_resolution_type {
    type: string
    sql: ${TABLE}.INT_PRICE_RESOLUTION_TYPE ;;
  }

  dimension: pg_tb_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PG_TB_WID ;;
  }

  dimension: prc_component_rpt_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PRC_COMPONENT_RPT_WID ;;
  }

  dimension: report_definition_num_1 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_1 ;;
  }

  dimension: report_definition_num_10 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_10 ;;
  }

  dimension: report_definition_num_100 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_100 ;;
  }

  dimension: report_definition_num_11 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_11 ;;
  }

  dimension: report_definition_num_12 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_12 ;;
  }

  dimension: report_definition_num_13 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_13 ;;
  }

  dimension: report_definition_num_14 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_14 ;;
  }

  dimension: report_definition_num_15 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_15 ;;
  }

  dimension: report_definition_num_16 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_16 ;;
  }

  dimension: report_definition_num_17 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_17 ;;
  }

  dimension: report_definition_num_18 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_18 ;;
  }

  dimension: report_definition_num_19 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_19 ;;
  }

  dimension: report_definition_num_2 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_2 ;;
  }

  dimension: report_definition_num_20 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_20 ;;
  }

  dimension: report_definition_num_21 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_21 ;;
  }

  dimension: report_definition_num_22 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_22 ;;
  }

  dimension: report_definition_num_23 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_23 ;;
  }

  dimension: report_definition_num_24 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_24 ;;
  }

  dimension: report_definition_num_25 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_25 ;;
  }

  dimension: report_definition_num_26 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_26 ;;
  }

  dimension: report_definition_num_27 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_27 ;;
  }

  dimension: report_definition_num_28 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_28 ;;
  }

  dimension: report_definition_num_29 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_29 ;;
  }

  dimension: report_definition_num_3 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_3 ;;
  }

  dimension: report_definition_num_30 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_30 ;;
  }

  dimension: report_definition_num_31 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_31 ;;
  }

  dimension: report_definition_num_32 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_32 ;;
  }

  dimension: report_definition_num_33 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_33 ;;
  }

  dimension: report_definition_num_34 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_34 ;;
  }

  dimension: report_definition_num_35 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_35 ;;
  }

  dimension: report_definition_num_36 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_36 ;;
  }

  dimension: report_definition_num_37 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_37 ;;
  }

  dimension: report_definition_num_38 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_38 ;;
  }

  dimension: report_definition_num_39 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_39 ;;
  }

  dimension: report_definition_num_4 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_4 ;;
  }

  dimension: report_definition_num_40 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_40 ;;
  }

  dimension: report_definition_num_41 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_41 ;;
  }

  dimension: report_definition_num_42 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_42 ;;
  }

  dimension: report_definition_num_43 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_43 ;;
  }

  dimension: report_definition_num_44 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_44 ;;
  }

  dimension: report_definition_num_45 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_45 ;;
  }

  dimension: report_definition_num_46 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_46 ;;
  }

  dimension: report_definition_num_47 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_47 ;;
  }

  dimension: report_definition_num_48 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_48 ;;
  }

  dimension: report_definition_num_49 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_49 ;;
  }

  dimension: report_definition_num_5 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_5 ;;
  }

  dimension: report_definition_num_50 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_50 ;;
  }

  dimension: report_definition_num_51 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_51 ;;
  }

  dimension: report_definition_num_52 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_52 ;;
  }

  dimension: report_definition_num_53 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_53 ;;
  }

  dimension: report_definition_num_54 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_54 ;;
  }

  dimension: report_definition_num_55 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_55 ;;
  }

  dimension: report_definition_num_56 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_56 ;;
  }

  dimension: report_definition_num_57 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_57 ;;
  }

  dimension: report_definition_num_58 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_58 ;;
  }

  dimension: report_definition_num_59 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_59 ;;
  }

  dimension: report_definition_num_6 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_6 ;;
  }

  dimension: report_definition_num_60 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_60 ;;
  }

  dimension: report_definition_num_61 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_61 ;;
  }

  dimension: report_definition_num_62 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_62 ;;
  }

  dimension: report_definition_num_63 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_63 ;;
  }

  dimension: report_definition_num_64 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_64 ;;
  }

  dimension: report_definition_num_65 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_65 ;;
  }

  dimension: report_definition_num_66 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_66 ;;
  }

  dimension: report_definition_num_67 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_67 ;;
  }

  dimension: report_definition_num_68 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_68 ;;
  }

  dimension: report_definition_num_69 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_69 ;;
  }

  dimension: report_definition_num_7 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_7 ;;
  }

  dimension: report_definition_num_70 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_70 ;;
  }

  dimension: report_definition_num_71 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_71 ;;
  }

  dimension: report_definition_num_72 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_72 ;;
  }

  dimension: report_definition_num_73 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_73 ;;
  }

  dimension: report_definition_num_74 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_74 ;;
  }

  dimension: report_definition_num_75 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_75 ;;
  }

  dimension: report_definition_num_76 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_76 ;;
  }

  dimension: report_definition_num_77 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_77 ;;
  }

  dimension: report_definition_num_78 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_78 ;;
  }

  dimension: report_definition_num_79 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_79 ;;
  }

  dimension: report_definition_num_8 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_8 ;;
  }

  dimension: report_definition_num_80 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_80 ;;
  }

  dimension: report_definition_num_81 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_81 ;;
  }

  dimension: report_definition_num_82 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_82 ;;
  }

  dimension: report_definition_num_83 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_83 ;;
  }

  dimension: report_definition_num_84 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_84 ;;
  }

  dimension: report_definition_num_85 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_85 ;;
  }

  dimension: report_definition_num_86 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_86 ;;
  }

  dimension: report_definition_num_87 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_87 ;;
  }

  dimension: report_definition_num_88 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_88 ;;
  }

  dimension: report_definition_num_89 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_89 ;;
  }

  dimension: report_definition_num_9 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_9 ;;
  }

  dimension: report_definition_num_90 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_90 ;;
  }

  dimension: report_definition_num_91 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_91 ;;
  }

  dimension: report_definition_num_92 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_92 ;;
  }

  dimension: report_definition_num_93 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_93 ;;
  }

  dimension: report_definition_num_94 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_94 ;;
  }

  dimension: report_definition_num_95 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_95 ;;
  }

  dimension: report_definition_num_96 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_96 ;;
  }

  dimension: report_definition_num_97 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_97 ;;
  }

  dimension: report_definition_num_98 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_98 ;;
  }

  dimension: report_definition_num_99 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_NUM_99 ;;
  }

  dimension: report_definition_string_1 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_1 ;;
  }

  dimension: report_definition_string_10 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_10 ;;
  }

  dimension: report_definition_string_100 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_100 ;;
  }

  dimension: report_definition_string_11 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_11 ;;
  }

  dimension: report_definition_string_12 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_12 ;;
  }

  dimension: report_definition_string_13 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_13 ;;
  }

  dimension: report_definition_string_14 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_14 ;;
  }

  dimension: report_definition_string_15 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_15 ;;
  }

  dimension: report_definition_string_16 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_16 ;;
  }

  dimension: report_definition_string_17 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_17 ;;
  }

  dimension: report_definition_string_18 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_18 ;;
  }

  dimension: report_definition_string_19 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_19 ;;
  }

  dimension: report_definition_string_2 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_2 ;;
  }

  dimension: report_definition_string_20 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_20 ;;
  }

  dimension: report_definition_string_21 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_21 ;;
  }

  dimension: report_definition_string_22 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_22 ;;
  }

  dimension: report_definition_string_23 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_23 ;;
  }

  dimension: report_definition_string_24 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_24 ;;
  }

  dimension: report_definition_string_25 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_25 ;;
  }

  dimension: report_definition_string_26 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_26 ;;
  }

  dimension: report_definition_string_27 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_27 ;;
  }

  dimension: report_definition_string_28 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_28 ;;
  }

  dimension: report_definition_string_29 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_29 ;;
  }

  dimension: report_definition_string_3 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_3 ;;
  }

  dimension: report_definition_string_30 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_30 ;;
  }

  dimension: report_definition_string_31 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_31 ;;
  }

  dimension: report_definition_string_32 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_32 ;;
  }

  dimension: report_definition_string_33 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_33 ;;
  }

  dimension: report_definition_string_34 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_34 ;;
  }

  dimension: report_definition_string_35 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_35 ;;
  }

  dimension: report_definition_string_36 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_36 ;;
  }

  dimension: report_definition_string_37 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_37 ;;
  }

  dimension: report_definition_string_38 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_38 ;;
  }

  dimension: report_definition_string_39 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_39 ;;
  }

  dimension: report_definition_string_4 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_4 ;;
  }

  dimension: report_definition_string_40 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_40 ;;
  }

  dimension: report_definition_string_41 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_41 ;;
  }

  dimension: report_definition_string_42 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_42 ;;
  }

  dimension: report_definition_string_43 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_43 ;;
  }

  dimension: report_definition_string_44 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_44 ;;
  }

  dimension: report_definition_string_45 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_45 ;;
  }

  dimension: report_definition_string_46 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_46 ;;
  }

  dimension: report_definition_string_47 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_47 ;;
  }

  dimension: report_definition_string_48 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_48 ;;
  }

  dimension: report_definition_string_49 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_49 ;;
  }

  dimension: report_definition_string_5 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_5 ;;
  }

  dimension: report_definition_string_50 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_50 ;;
  }

  dimension: report_definition_string_51 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_51 ;;
  }

  dimension: report_definition_string_52 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_52 ;;
  }

  dimension: report_definition_string_53 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_53 ;;
  }

  dimension: report_definition_string_54 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_54 ;;
  }

  dimension: report_definition_string_55 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_55 ;;
  }

  dimension: report_definition_string_56 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_56 ;;
  }

  dimension: report_definition_string_57 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_57 ;;
  }

  dimension: report_definition_string_58 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_58 ;;
  }

  dimension: report_definition_string_59 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_59 ;;
  }

  dimension: report_definition_string_6 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_6 ;;
  }

  dimension: report_definition_string_60 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_60 ;;
  }

  dimension: report_definition_string_61 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_61 ;;
  }

  dimension: report_definition_string_62 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_62 ;;
  }

  dimension: report_definition_string_63 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_63 ;;
  }

  dimension: report_definition_string_64 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_64 ;;
  }

  dimension: report_definition_string_65 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_65 ;;
  }

  dimension: report_definition_string_66 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_66 ;;
  }

  dimension: report_definition_string_67 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_67 ;;
  }

  dimension: report_definition_string_68 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_68 ;;
  }

  dimension: report_definition_string_69 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_69 ;;
  }

  dimension: report_definition_string_7 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_7 ;;
  }

  dimension: report_definition_string_70 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_70 ;;
  }

  dimension: report_definition_string_71 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_71 ;;
  }

  dimension: report_definition_string_72 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_72 ;;
  }

  dimension: report_definition_string_73 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_73 ;;
  }

  dimension: report_definition_string_74 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_74 ;;
  }

  dimension: report_definition_string_75 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_75 ;;
  }

  dimension: report_definition_string_76 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_76 ;;
  }

  dimension: report_definition_string_77 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_77 ;;
  }

  dimension: report_definition_string_78 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_78 ;;
  }

  dimension: report_definition_string_79 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_79 ;;
  }

  dimension: report_definition_string_8 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_8 ;;
  }

  dimension: report_definition_string_80 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_80 ;;
  }

  dimension: report_definition_string_81 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_81 ;;
  }

  dimension: report_definition_string_82 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_82 ;;
  }

  dimension: report_definition_string_83 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_83 ;;
  }

  dimension: report_definition_string_84 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_84 ;;
  }

  dimension: report_definition_string_85 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_85 ;;
  }

  dimension: report_definition_string_86 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_86 ;;
  }

  dimension: report_definition_string_87 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_87 ;;
  }

  dimension: report_definition_string_88 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_88 ;;
  }

  dimension: report_definition_string_89 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_89 ;;
  }

  dimension: report_definition_string_9 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_9 ;;
  }

  dimension: report_definition_string_90 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_90 ;;
  }

  dimension: report_definition_string_91 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_91 ;;
  }

  dimension: report_definition_string_92 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_92 ;;
  }

  dimension: report_definition_string_93 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_93 ;;
  }

  dimension: report_definition_string_94 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_94 ;;
  }

  dimension: report_definition_string_95 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_95 ;;
  }

  dimension: report_definition_string_96 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_96 ;;
  }

  dimension: report_definition_string_97 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_97 ;;
  }

  dimension: report_definition_string_98 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_98 ;;
  }

  dimension: report_definition_string_99 {
    type: string
    sql: ${TABLE}.REPORT_DEFINITION_STRING_99 ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: spreadsheet_name {
    type: string
    sql: ${TABLE}.SPREADSHEET_NAME ;;
  }

  dimension: spreadsheet_type {
    type: string
    sql: ${TABLE}.SPREADSHEET_TYPE ;;
  }

  dimension: src_sys_contract_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_CONTRACT_ID ;;
  }

  dimension: src_sys_prc_component_rpt_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_PRC_COMPONENT_RPT_ID ;;
  }

  dimension: tier_flag {
    type: string
    sql: ${TABLE}.TIER_FLAG ;;
  }

  dimension: tier_idx {
    type: number
    sql: ${TABLE}.TIER_IDX ;;
  }

  dimension: tier_value {
    type: string
    sql: ${TABLE}.TIER_VALUE ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.UNITS ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}.UOM ;;
  }

  dimension_group: ver_end {
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
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: ver_num {
    type: string
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension_group: ver_start {
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
    sql: ${TABLE}.VER_START_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: [spreadsheet_name]
  }
}
