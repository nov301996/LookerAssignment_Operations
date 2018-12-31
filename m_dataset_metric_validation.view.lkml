view: m_dataset_metric_validation {
  sql_table_name: dbo.M_DATASET_METRIC_VALIDATION ;;

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

  dimension: dataset_metric_expected_observation_value {
    type: number
    sql: ${TABLE}.DATASET_METRIC_EXPECTED_OBSERVATION_VALUE ;;
  }

  dimension: dataset_metric_id {
    type: number
    sql: ${TABLE}.DATASET_METRIC_ID ;;
  }

  dimension: dataset_metric_validation_id {
    type: number
    sql: ${TABLE}.DATASET_METRIC_VALIDATION_ID ;;
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
