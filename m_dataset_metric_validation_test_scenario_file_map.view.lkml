view: m_dataset_metric_validation_test_scenario_file_map {
  sql_table_name: dbo.M_DATASET_METRIC_VALIDATION_TEST_SCENARIO_FILE_MAP ;;

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

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: test_scenario_file_map_id {
    type: number
    sql: ${TABLE}.TEST_SCENARIO_FILE_MAP_ID ;;
  }

  dimension: test_scenario_file_path {
    type: string
    sql: ${TABLE}.TEST_SCENARIO_FILE_PATH ;;
  }

  dimension: test_scenario_file_sequence_id {
    type: number
    sql: ${TABLE}.TEST_SCENARIO_FILE_SEQUENCE_ID ;;
  }

  dimension: test_scenario_id {
    type: number
    sql: ${TABLE}.TEST_SCENARIO_ID ;;
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
