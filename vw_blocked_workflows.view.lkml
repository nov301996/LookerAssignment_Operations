view: vw_blocked_workflows {
  sql_table_name: dbo.VW_BLOCKED_WORKFLOWS ;;

  dimension: blocked_reason {
    type: string
    sql: ${TABLE}.BLOCKED_REASON ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  dimension: workflow_name {
    type: string
    sql: ${TABLE}.WORKFLOW_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [workflow_name]
  }
}
