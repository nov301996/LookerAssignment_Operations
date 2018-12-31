view: vw_workflow_sync_create {
  sql_table_name: dbo.VW_WORKFLOW_SYNC_CREATE ;;

  dimension: create_sync_dataset {
    type: string
    sql: ${TABLE}.create_sync_dataset ;;
  }

  dimension: create_sync_dataset_id {
    type: number
    sql: ${TABLE}.create_sync_dataset_id ;;
  }

  dimension: create_sync_host_id {
    type: number
    sql: ${TABLE}.create_sync_host_id ;;
  }

  dimension: create_sync_schema {
    type: string
    sql: ${TABLE}.create_sync_schema ;;
  }

  dimension: create_sync_workflow_active_flg {
    type: number
    sql: ${TABLE}.create_sync_workflow_active_flg ;;
  }

  dimension: create_sync_workflow_id {
    type: number
    sql: ${TABLE}.create_sync_workflow_id ;;
  }

  dimension: create_sync_workflow_name {
    type: string
    sql: ${TABLE}.create_sync_workflow_name ;;
  }

  dimension: input_dataset {
    type: string
    sql: ${TABLE}.input_dataset ;;
  }

  dimension: input_dataset_id {
    type: number
    sql: ${TABLE}.input_dataset_id ;;
  }

  dimension: input_host_id {
    type: number
    sql: ${TABLE}.input_host_id ;;
  }

  dimension: input_schema {
    type: string
    sql: ${TABLE}.input_schema ;;
  }

  dimension: output_dataset {
    type: string
    sql: ${TABLE}.output_dataset ;;
  }

  dimension: output_dataset_id {
    type: number
    sql: ${TABLE}.output_dataset_id ;;
  }

  dimension: output_host_id {
    type: number
    sql: ${TABLE}.output_host_id ;;
  }

  dimension: output_schema {
    type: string
    sql: ${TABLE}.output_schema ;;
  }

  measure: count {
    type: count
    drill_fields: [create_sync_workflow_name]
  }
}
