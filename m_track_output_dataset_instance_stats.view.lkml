view: m_track_output_dataset_instance_stats {
  sql_table_name: dbo.M_TRACK_OUTPUT_DATASET_INSTANCE_STATS ;;

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

  dimension: num_records_deleted {
    type: number
    sql: ${TABLE}.NUM_RECORDS_DELETED ;;
  }

  dimension: num_records_inserted {
    type: number
    sql: ${TABLE}.NUM_RECORDS_INSERTED ;;
  }

  dimension: num_records_updated {
    type: number
    sql: ${TABLE}.NUM_RECORDS_UPDATED ;;
  }

  dimension: output_dataset_instance_stats_id {
    type: number
    sql: ${TABLE}.OUTPUT_DATASET_INSTANCE_STATS_ID ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
