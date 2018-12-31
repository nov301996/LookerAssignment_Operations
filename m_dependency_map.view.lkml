view: m_dependency_map {
  sql_table_name: dbo.M_DEPENDENCY_MAP ;;

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

  dimension: dependency_dataset_id {
    type: number
    sql: ${TABLE}.DEPENDENCY_DATASET_ID ;;
  }

  dimension: dependency_dataset_instance_statuses {
    type: string
    sql: ${TABLE}.DEPENDENCY_DATASET_INSTANCE_STATUSES ;;
  }

  dimension: dependency_map_condition_type {
    type: string
    sql: ${TABLE}.DEPENDENCY_MAP_CONDITION_TYPE ;;
  }

  dimension: dependency_map_group_id {
    type: number
    sql: ${TABLE}.DEPENDENCY_MAP_GROUP_ID ;;
  }

  dimension: dependency_map_id {
    type: number
    sql: ${TABLE}.DEPENDENCY_MAP_ID ;;
  }

  dimension: dependency_timing_difference_secs {
    type: number
    sql: ${TABLE}.DEPENDENCY_TIMING_DIFFERENCE_SECS ;;
  }

  dimension: dependency_type_id {
    type: number
    sql: ${TABLE}.DEPENDENCY_TYPE_ID ;;
  }

  dimension: dependency_workflow_instance_statuses {
    type: string
    sql: ${TABLE}.DEPENDENCY_WORKFLOW_INSTANCE_STATUSES ;;
  }

  dimension: list_condition_dependency_map_id {
    type: number
    sql: ${TABLE}.LIST_CONDITION_DEPENDENCY_MAP_ID ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ORDINAL_POSITION ;;
  }

  dimension: ordinal_position_by_dependency_group {
    type: number
    sql: ${TABLE}.ORDINAL_POSITION_BY_DEPENDENCY_GROUP ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
