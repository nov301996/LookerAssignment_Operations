view: m_join {
  sql_table_name: dbo.M_JOIN ;;

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

  dimension: join_id {
    type: number
    sql: ${TABLE}.JOIN_ID ;;
  }

  dimension: join_left_dataset_id {
    type: number
    sql: ${TABLE}.JOIN_LEFT_DATASET_ID ;;
  }

  dimension: join_right_dataset_id {
    type: number
    sql: ${TABLE}.JOIN_RIGHT_DATASET_ID ;;
  }

  dimension: join_type_id {
    type: number
    sql: ${TABLE}.JOIN_TYPE_ID ;;
  }

  dimension: output_dataset_id {
    type: number
    sql: ${TABLE}.OUTPUT_DATASET_ID ;;
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
