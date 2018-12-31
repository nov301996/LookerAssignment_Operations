view: m_workflow_execution_subsystem {
  sql_table_name: dbo.M_WORKFLOW_EXECUTION_SUBSYSTEM ;;

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension_group: create_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATE_DT ;;
  }

  dimension: create_user {
    type: string
    sql: ${TABLE}.CREATE_USER ;;
  }

  dimension: manifest_build_directory {
    type: string
    sql: ${TABLE}.MANIFEST_BUILD_DIRECTORY ;;
  }

  dimension: manifest_drop_directory {
    type: string
    sql: ${TABLE}.MANIFEST_DROP_DIRECTORY ;;
  }

  dimension: manifest_drop_format {
    type: string
    sql: ${TABLE}.MANIFEST_DROP_FORMAT ;;
  }

  dimension: manifest_drop_host_id {
    type: number
    sql: ${TABLE}.MANIFEST_DROP_HOST_ID ;;
  }

  dimension: manifest_drop_protocol {
    type: string
    sql: ${TABLE}.MANIFEST_DROP_PROTOCOL ;;
  }

  dimension: manifest_execution_directory {
    type: string
    sql: ${TABLE}.MANIFEST_EXECUTION_DIRECTORY ;;
  }

  dimension: manifest_execution_host_id {
    type: number
    sql: ${TABLE}.MANIFEST_EXECUTION_HOST_ID ;;
  }

  dimension: manifest_pickup_directory {
    type: string
    sql: ${TABLE}.MANIFEST_PICKUP_DIRECTORY ;;
  }

  dimension: manifest_pickup_host_id {
    type: number
    sql: ${TABLE}.MANIFEST_PICKUP_HOST_ID ;;
  }

  dimension: manifest_pickup_protocol {
    type: string
    sql: ${TABLE}.MANIFEST_PICKUP_PROTOCOL ;;
  }

  dimension: manifest_process_directory {
    type: string
    sql: ${TABLE}.MANIFEST_PROCESS_DIRECTORY ;;
  }

  dimension: max_concurrent_workflow_instances {
    type: number
    sql: ${TABLE}.MAX_CONCURRENT_WORKFLOW_INSTANCES ;;
  }

  dimension: online_flg {
    type: number
    sql: ${TABLE}.ONLINE_FLG ;;
  }

  dimension_group: update_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.UPDATE_DT ;;
  }

  dimension: update_user {
    type: string
    sql: ${TABLE}.UPDATE_USER ;;
  }

  dimension: workflow_execution_subsystem_desc {
    type: string
    sql: ${TABLE}.WORKFLOW_EXECUTION_SUBSYSTEM_DESC ;;
  }

  dimension: workflow_execution_subsystem_id {
    type: number
    sql: ${TABLE}.WORKFLOW_EXECUTION_SUBSYSTEM_ID ;;
  }

  dimension: workflow_execution_subsystem_name {
    type: string
    sql: ${TABLE}.WORKFLOW_EXECUTION_SUBSYSTEM_NAME ;;
  }

  dimension: workflow_execution_subsystem_root_directory {
    type: string
    sql: ${TABLE}.WORKFLOW_EXECUTION_SUBSYSTEM_ROOT_DIRECTORY ;;
  }

  dimension: workflow_executor_type {
    type: string
    sql: ${TABLE}.WORKFLOW_EXECUTOR_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [workflow_execution_subsystem_name]
  }
}
