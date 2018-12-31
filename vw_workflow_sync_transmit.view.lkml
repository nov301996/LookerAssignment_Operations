view: vw_workflow_sync_transmit {
  sql_table_name: dbo.VW_WORKFLOW_SYNC_TRANSMIT ;;

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

  dimension: transmit_sync_workflow_active_flg {
    type: number
    sql: ${TABLE}.transmit_sync_workflow_active_flg ;;
  }

  dimension: transmit_sync_workflow_id {
    type: number
    sql: ${TABLE}.transmit_sync_workflow_id ;;
  }

  dimension: transmit_sync_workflow_name {
    type: string
    sql: ${TABLE}.transmit_sync_workflow_name ;;
  }

  measure: count {
    type: count
    drill_fields: [transmit_sync_workflow_name]
  }
}
