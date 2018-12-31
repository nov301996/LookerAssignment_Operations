view: vw_dispatchable_dataset_instances {
  sql_table_name: dbo.VW_DISPATCHABLE_DATASET_INSTANCES ;;

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: dataset_instance_id {
    type: number
    sql: ${TABLE}.DATASET_INSTANCE_ID ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.STATUS_ID ;;
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
