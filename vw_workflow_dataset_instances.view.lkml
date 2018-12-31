view: vw_workflow_dataset_instances {
  sql_table_name: dbo.VW_WORKFLOW_DATASET_INSTANCES ;;

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: dataset_instance_direction {
    type: string
    sql: ${TABLE}.DATASET_INSTANCE_DIRECTION ;;
  }

  dimension: dataset_instance_id {
    type: number
    sql: ${TABLE}.DATASET_INSTANCE_ID ;;
  }

  dimension: dataset_instance_status {
    type: string
    sql: ${TABLE}.DATASET_INSTANCE_STATUS ;;
  }

  dimension: oozie_job_url {
    type: string
    sql: ${TABLE}.OOZIE_JOB_URL ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  dimension: workflow_instance_id {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_ID ;;
  }

  dimension: workflow_instance_status {
    type: string
    sql: ${TABLE}.WORKFLOW_INSTANCE_STATUS ;;
  }

  dimension: workflow_name {
    type: string
    sql: ${TABLE}.WORKFLOW_NAME ;;
  }

  dimension: workflow_status_id {
    type: number
    sql: ${TABLE}.WORKFLOW_STATUS_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [workflow_name]
  }
}
