view: m_dependency_map_group {
  sql_table_name: dbo.M_DEPENDENCY_MAP_GROUP ;;

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

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: dependency_group_level {
    type: number
    sql: ${TABLE}.DEPENDENCY_GROUP_LEVEL ;;
  }

  dimension: dependency_map_group_id {
    type: number
    sql: ${TABLE}.DEPENDENCY_MAP_GROUP_ID ;;
  }

  dimension: operator_id {
    type: number
    sql: ${TABLE}.OPERATOR_ID ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ORDINAL_POSITION ;;
  }

  dimension: parent_dependency_map_group_id {
    type: number
    sql: ${TABLE}.PARENT_DEPENDENCY_MAP_GROUP_ID ;;
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

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
