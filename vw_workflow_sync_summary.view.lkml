view: vw_workflow_sync_summary {
  sql_table_name: dbo.VW_WORKFLOW_SYNC_SUMMARY ;;

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

  dimension: create_workflow_id {
    type: number
    sql: ${TABLE}.create_workflow_id ;;
  }

  dimension: create_workflow_name {
    type: string
    sql: ${TABLE}.create_workflow_name ;;
  }

  dimension: destination_dataset {
    type: string
    sql: ${TABLE}.destination_dataset ;;
  }

  dimension: destination_dataset_id {
    type: number
    sql: ${TABLE}.destination_dataset_id ;;
  }

  dimension: destination_host_id {
    type: number
    sql: ${TABLE}.destination_host_id ;;
  }

  dimension: destination_schema {
    type: string
    sql: ${TABLE}.destination_schema ;;
  }

  dimension: maintenance_strategy {
    type: string
    sql: ${TABLE}.maintenance_strategy ;;
  }

  dimension: source_dataset {
    type: string
    sql: ${TABLE}.source_dataset ;;
  }

  dimension: source_dataset_id {
    type: number
    sql: ${TABLE}.source_dataset_id ;;
  }

  dimension: source_host_id {
    type: number
    sql: ${TABLE}.source_host_id ;;
  }

  dimension: source_schema {
    type: string
    sql: ${TABLE}.source_schema ;;
  }

  dimension: transmit_sync_dataset {
    type: string
    sql: ${TABLE}.transmit_sync_dataset ;;
  }

  dimension: transmit_sync_dataset_id {
    type: number
    sql: ${TABLE}.transmit_sync_dataset_id ;;
  }

  dimension: transmit_sync_host_id {
    type: number
    sql: ${TABLE}.transmit_sync_host_id ;;
  }

  dimension: transmit_sync_schema {
    type: string
    sql: ${TABLE}.transmit_sync_schema ;;
  }

  dimension: valid_active_sync_workflow_stream_ind {
    type: number
    sql: ${TABLE}.valid_active_sync_workflow_stream_ind ;;
  }

  measure: count {
    type: count
    drill_fields: [create_workflow_name]
  }
}
