view: vw_workflow_sync_detail {
  sql_table_name: dbo.VW_WORKFLOW_SYNC_DETAIL ;;

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

  dimension: create_incr_input_dataset {
    type: string
    sql: ${TABLE}.create_incr_input_dataset ;;
  }

  dimension: create_incr_input_dataset_id {
    type: number
    sql: ${TABLE}.create_incr_input_dataset_id ;;
  }

  dimension: create_incr_input_host_id {
    type: number
    sql: ${TABLE}.create_incr_input_host_id ;;
  }

  dimension: create_incr_input_schema {
    type: string
    sql: ${TABLE}.create_incr_input_schema ;;
  }

  dimension: create_incr_output_dataset {
    type: string
    sql: ${TABLE}.create_incr_output_dataset ;;
  }

  dimension: create_incr_output_dataset_id {
    type: number
    sql: ${TABLE}.create_incr_output_dataset_id ;;
  }

  dimension: create_incr_output_host_id {
    type: number
    sql: ${TABLE}.create_incr_output_host_id ;;
  }

  dimension: create_incr_output_schema {
    type: string
    sql: ${TABLE}.create_incr_output_schema ;;
  }

  dimension: create_incr_sync_dataset {
    type: string
    sql: ${TABLE}.create_incr_sync_dataset ;;
  }

  dimension: create_incr_sync_dataset_id {
    type: number
    sql: ${TABLE}.create_incr_sync_dataset_id ;;
  }

  dimension: create_incr_sync_host_id {
    type: number
    sql: ${TABLE}.create_incr_sync_host_id ;;
  }

  dimension: create_incr_sync_schema {
    type: string
    sql: ${TABLE}.create_incr_sync_schema ;;
  }

  dimension: create_rbld_input_dataset {
    type: string
    sql: ${TABLE}.create_rbld_input_dataset ;;
  }

  dimension: create_rbld_input_dataset_id {
    type: number
    sql: ${TABLE}.create_rbld_input_dataset_id ;;
  }

  dimension: create_rbld_input_host_id {
    type: number
    sql: ${TABLE}.create_rbld_input_host_id ;;
  }

  dimension: create_rbld_input_schema {
    type: string
    sql: ${TABLE}.create_rbld_input_schema ;;
  }

  dimension: create_sync_workflow_active_flg {
    type: number
    sql: ${TABLE}.create_sync_workflow_active_flg ;;
  }

  dimension: create_workflow_id {
    type: number
    sql: ${TABLE}.create_workflow_id ;;
  }

  dimension: create_workflow_name {
    type: string
    sql: ${TABLE}.create_workflow_name ;;
  }

  dimension: maintenance_strategy {
    type: string
    sql: ${TABLE}.maintenance_strategy ;;
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

  measure: count {
    type: count
    drill_fields: [create_workflow_name]
  }
}
