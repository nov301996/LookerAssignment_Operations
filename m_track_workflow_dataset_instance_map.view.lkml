view: m_track_workflow_dataset_instance_map {
  sql_table_name: dbo.M_TRACK_WORKFLOW_DATASET_INSTANCE_MAP ;;

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

  dimension: dataset_instance_direction {
    type: string
    sql: ${TABLE}.DATASET_INSTANCE_DIRECTION ;;
  }

  dimension: dataset_instance_id {
    type: number
    sql: ${TABLE}.DATASET_INSTANCE_ID ;;
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

  dimension: workflow_dataset_instance_map_id {
    type: number
    sql: ${TABLE}.WORKFLOW_DATASET_INSTANCE_MAP_ID ;;
  }

  dimension: workflow_instance_id {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
