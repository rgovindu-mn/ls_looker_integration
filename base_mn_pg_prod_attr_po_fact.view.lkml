view: mn_pg_prod_attr_po_fact {
    derived_table: {
      sql:
      SELECT  SRC_SYS_STRUCT_LI_ID,
              ATTR_VALUE
      FROM MN_PG_PROD_PRC_ATTR_FACT_VW
      WHERE ATTR_NAME IN ('PONum')
      ;;
  }

  dimension: po_numbers {
    type: number
    group_label: "PO Number"
    sql: ${TABLE}.ATTR_VALUE ;;
  }

  dimension: src_sys_struct_li_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_STRUCT_LI_ID ;;
  }

}
