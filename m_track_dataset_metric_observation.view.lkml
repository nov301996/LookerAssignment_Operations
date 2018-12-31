view: m_track_dataset_metric_observation {
  sql_table_name: dbo.M_TRACK_DATASET_METRIC_OBSERVATION ;;

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

  dimension: dataset_metric_id {
    type: number
    sql: ${TABLE}.DATASET_METRIC_ID ;;
  }

  dimension: dataset_metric_observation_id {
    type: number
    sql: ${TABLE}.DATASET_METRIC_OBSERVATION_ID ;;
  }

  dimension: dataset_metric_observation_value {
    type: number
    sql: ${TABLE}.DATASET_METRIC_OBSERVATION_VALUE ;;
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

  dimension: workflow_instance_id {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
