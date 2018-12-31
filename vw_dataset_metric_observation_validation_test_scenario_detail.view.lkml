view: vw_dataset_metric_observation_validation_test_scenario_detail {
  sql_table_name: dbo.VW_DATASET_METRIC_OBSERVATION_VALIDATION_TEST_SCENARIO_DETAIL ;;

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: dataset_metric_active_flg {
    type: number
    sql: ${TABLE}.DATASET_METRIC_ACTIVE_FLG ;;
  }

  dimension: dataset_metric_id {
    type: number
    sql: ${TABLE}.DATASET_METRIC_ID ;;
  }

  dimension: relative_object_description {
    type: string
    sql: ${TABLE}.RELATIVE_OBJECT_DESCRIPTION ;;
  }

  dimension: test_scenario_id {
    type: number
    sql: ${TABLE}.TEST_SCENARIO_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
