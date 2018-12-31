view: vw_workflow_sync_apply {
  sql_table_name: dbo.VW_WORKFLOW_SYNC_APPLY ;;

  dimension: apply_maintenance_strategy {
    type: string
    sql: ${TABLE}.apply_maintenance_strategy ;;
  }

  dimension: apply_sync_dataset {
    type: string
    sql: ${TABLE}.apply_sync_dataset ;;
  }

  dimension: apply_sync_dataset_id {
    type: number
    sql: ${TABLE}.apply_sync_dataset_id ;;
  }

  dimension: apply_sync_host_id {
    type: number
    sql: ${TABLE}.apply_sync_host_id ;;
  }

  dimension: apply_sync_schema {
    type: string
    sql: ${TABLE}.apply_sync_schema ;;
  }

  dimension: apply_sync_workflow_active_flg {
    type: number
    sql: ${TABLE}.apply_sync_workflow_active_flg ;;
  }

  dimension: apply_sync_workflow_id {
    type: number
    sql: ${TABLE}.apply_sync_workflow_id ;;
  }

  dimension: apply_sync_workflow_name {
    type: string
    sql: ${TABLE}.apply_sync_workflow_name ;;
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

  measure: count {
    type: count
    drill_fields: [apply_sync_workflow_name]
  }
}
