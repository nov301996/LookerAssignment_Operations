view: vw_dependency_map {
  sql_table_name: dbo.VW_DEPENDENCY_MAP ;;

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: dependency_dataset_id {
    type: number
    sql: ${TABLE}.DEPENDENCY_DATASET_ID ;;
  }

  dimension: dependency_dataset_instance_attrib_name {
    type: string
    sql: ${TABLE}.DEPENDENCY_DATASET_INSTANCE_ATTRIB_NAME ;;
  }

  dimension: dependency_dataset_instance_statuses {
    type: string
    sql: ${TABLE}.DEPENDENCY_DATASET_INSTANCE_STATUSES ;;
  }

  dimension: dependency_function {
    type: string
    sql: ${TABLE}.DEPENDENCY_FUNCTION ;;
  }

  dimension: dependency_group_level {
    type: number
    sql: ${TABLE}.DEPENDENCY_GROUP_LEVEL ;;
  }

  dimension: dependency_map_condition_type {
    type: string
    sql: ${TABLE}.DEPENDENCY_MAP_CONDITION_TYPE ;;
  }

  dimension: dependency_map_group_id {
    type: number
    sql: ${TABLE}.DEPENDENCY_MAP_GROUP_ID ;;
  }

  dimension: dependency_map_group_ordinal_position {
    type: number
    sql: ${TABLE}.DEPENDENCY_MAP_GROUP_ORDINAL_POSITION ;;
  }

  dimension: dependency_map_id {
    type: number
    sql: ${TABLE}.DEPENDENCY_MAP_ID ;;
  }

  dimension: dependency_map_ordinal_position {
    type: number
    sql: ${TABLE}.DEPENDENCY_MAP_ORDINAL_POSITION ;;
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

  dimension: list_condition_has_throttle_condition_flg {
    type: number
    sql: ${TABLE}.LIST_CONDITION_HAS_THROTTLE_CONDITION_FLG ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}.OPERATOR ;;
  }

  dimension: operator_id {
    type: number
    sql: ${TABLE}.OPERATOR_ID ;;
  }

  dimension: parent_dependency_map_group_id {
    type: number
    sql: ${TABLE}.PARENT_DEPENDENCY_MAP_GROUP_ID ;;
  }

  dimension: parent_operator {
    type: string
    sql: ${TABLE}.PARENT_OPERATOR ;;
  }

  dimension: source_dataset_id {
    type: number
    sql: ${TABLE}.SOURCE_DATASET_ID ;;
  }

  dimension: source_object_type {
    type: string
    sql: ${TABLE}.SOURCE_OBJECT_TYPE ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [dependency_dataset_instance_attrib_name]
  }
}
