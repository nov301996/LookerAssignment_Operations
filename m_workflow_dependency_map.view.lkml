view: m_workflow_dependency_map {
  sql_table_name: dbo.M_WORKFLOW_DEPENDENCY_MAP ;;

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

  dimension: dependency_semaphore {
    type: string
    sql: ${TABLE}.DEPENDENCY_SEMAPHORE ;;
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

  dimension: workflow_dependency_dataset_id {
    type: number
    sql: ${TABLE}.WORKFLOW_DEPENDENCY_DATASET_ID ;;
  }

  dimension: workflow_dependency_dataset_instance_status {
    type: string
    sql: ${TABLE}.WORKFLOW_DEPENDENCY_DATASET_INSTANCE_STATUS ;;
  }

  dimension: workflow_dependency_map_id {
    type: number
    sql: ${TABLE}.WORKFLOW_DEPENDENCY_MAP_ID ;;
  }

  dimension: workflow_dependency_type_id {
    type: number
    sql: ${TABLE}.WORKFLOW_DEPENDENCY_TYPE_ID ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  dimension: workflow_input_dataset_id {
    type: number
    sql: ${TABLE}.WORKFLOW_INPUT_DATASET_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
