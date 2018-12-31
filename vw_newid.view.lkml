view: vw_newid {
  sql_table_name: dbo.VW_NEWID ;;

  dimension: newid {
    type: string
    sql: ${TABLE}.newid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
