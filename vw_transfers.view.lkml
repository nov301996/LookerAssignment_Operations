view: vw_transfers {
  sql_table_name: dbo.VW_TRANSFERS ;;

  dimension: column_delimiter {
    type: string
    sql: ${TABLE}.COLUMN_DELIMITER ;;
  }

  dimension: delete_source_file_flg {
    type: number
    sql: ${TABLE}.DELETE_SOURCE_FILE_FLG ;;
  }

  dimension: extract_dataset_id {
    type: number
    sql: ${TABLE}.EXTRACT_DATASET_ID ;;
  }

  dimension: extract_dataset_name {
    type: string
    sql: ${TABLE}.EXTRACT_DATASET_NAME ;;
  }

  dimension: extract_host_catalog {
    type: string
    sql: ${TABLE}.EXTRACT_HOST_CATALOG ;;
  }

  dimension: extract_host_hostname {
    type: string
    sql: ${TABLE}.EXTRACT_HOST_HOSTNAME ;;
  }

  dimension: extract_host_id {
    type: number
    sql: ${TABLE}.EXTRACT_HOST_ID ;;
  }

  dimension: extract_workflow_active_flg {
    type: number
    sql: ${TABLE}.EXTRACT_WORKFLOW_ACTIVE_FLG ;;
  }

  dimension: extract_workflow_id {
    type: number
    sql: ${TABLE}.EXTRACT_WORKFLOW_ID ;;
  }

  dimension: extract_workflow_name {
    type: string
    sql: ${TABLE}.EXTRACT_WORKFLOW_NAME ;;
  }

  dimension: extract_workflow_type {
    type: string
    sql: ${TABLE}.EXTRACT_WORKFLOW_TYPE ;;
  }

  dimension: include_header {
    type: number
    sql: ${TABLE}.INCLUDE_HEADER ;;
  }

  dimension: maintenance_strategy {
    type: string
    sql: ${TABLE}.MAINTENANCE_STRATEGY ;;
  }

  dimension: row_delimiter {
    type: string
    sql: ${TABLE}.ROW_DELIMITER ;;
  }

  dimension: source_system_active_flg {
    type: number
    sql: ${TABLE}.SOURCE_SYSTEM_ACTIVE_FLG ;;
  }

  dimension: source_system_id {
    type: number
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: text_qualifier {
    type: string
    sql: ${TABLE}.TEXT_QUALIFIER ;;
  }

  dimension: transfer_dataset_id {
    type: number
    sql: ${TABLE}.TRANSFER_DATASET_ID ;;
  }

  dimension: transfer_dataset_name {
    type: string
    sql: ${TABLE}.TRANSFER_DATASET_NAME ;;
  }

  dimension: transfer_host_catalog {
    type: string
    sql: ${TABLE}.TRANSFER_HOST_CATALOG ;;
  }

  dimension: transfer_host_hostname {
    type: string
    sql: ${TABLE}.TRANSFER_HOST_HOSTNAME ;;
  }

  dimension: transfer_host_id {
    type: number
    sql: ${TABLE}.TRANSFER_HOST_ID ;;
  }

  dimension: transfer_workflow_active_flg {
    type: number
    sql: ${TABLE}.TRANSFER_WORKFLOW_ACTIVE_FLG ;;
  }

  dimension: transfer_workflow_id {
    type: number
    sql: ${TABLE}.TRANSFER_WORKFLOW_ID ;;
  }

  dimension: transfer_workflow_name {
    type: string
    sql: ${TABLE}.TRANSFER_WORKFLOW_NAME ;;
  }

  dimension: transfer_workflow_type {
    type: string
    sql: ${TABLE}.TRANSFER_WORKFLOW_TYPE ;;
  }

  dimension: window_desc {
    type: string
    sql: ${TABLE}.WINDOW_DESC ;;
  }

  dimension: window_enabled {
    type: number
    sql: ${TABLE}.WINDOW_ENABLED ;;
  }

  dimension: window_end_time {
    type: string
    sql: ${TABLE}.WINDOW_END_TIME ;;
  }

  dimension: window_fri_flg {
    type: number
    sql: ${TABLE}.WINDOW_FRI_FLG ;;
  }

  dimension: window_interval {
    type: number
    sql: ${TABLE}.WINDOW_INTERVAL ;;
  }

  dimension: window_mon_flg {
    type: number
    sql: ${TABLE}.WINDOW_MON_FLG ;;
  }

  dimension: window_recurrence_factor {
    type: number
    sql: ${TABLE}.WINDOW_RECURRENCE_FACTOR ;;
  }

  dimension: window_relative_interval {
    type: number
    sql: ${TABLE}.WINDOW_RELATIVE_INTERVAL ;;
  }

  dimension: window_sat_flg {
    type: number
    sql: ${TABLE}.WINDOW_SAT_FLG ;;
  }

  dimension: window_start_time {
    type: string
    sql: ${TABLE}.WINDOW_START_TIME ;;
  }

  dimension: window_subday_interval {
    type: number
    sql: ${TABLE}.WINDOW_SUBDAY_INTERVAL ;;
  }

  dimension: window_subday_type {
    type: number
    sql: ${TABLE}.WINDOW_SUBDAY_TYPE ;;
  }

  dimension: window_sun_flg {
    type: number
    sql: ${TABLE}.WINDOW_SUN_FLG ;;
  }

  dimension: window_thu_flg {
    type: number
    sql: ${TABLE}.WINDOW_THU_FLG ;;
  }

  dimension: window_tue_flg {
    type: number
    sql: ${TABLE}.WINDOW_TUE_FLG ;;
  }

  dimension: window_type {
    type: number
    sql: ${TABLE}.WINDOW_TYPE ;;
  }

  dimension: window_wed_flg {
    type: number
    sql: ${TABLE}.WINDOW_WED_FLG ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      transfer_workflow_name,
      extract_workflow_name,
      transfer_dataset_name,
      transfer_host_hostname,
      extract_dataset_name,
      extract_host_hostname
    ]
  }
}
