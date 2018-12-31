view: vw_workflow_input_primary_flg {
  sql_table_name: dbo.VW_WORKFLOW_INPUT_PRIMARY_FLG ;;

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: primary_flg {
    type: number
    sql: ${TABLE}.PRIMARY_FLG ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
