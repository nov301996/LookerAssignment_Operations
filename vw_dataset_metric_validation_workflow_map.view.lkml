view: vw_dataset_metric_validation_workflow_map {
  sql_table_name: dbo.VW_DATASET_METRIC_VALIDATION_WORKFLOW_MAP ;;

  dimension: dataset_metric_active_flg {
    type: number
    sql: ${TABLE}.DATASET_METRIC_ACTIVE_FLG ;;
  }

  dimension: dataset_metric_expected_observation_value {
    type: number
    sql: ${TABLE}.DATASET_METRIC_EXPECTED_OBSERVATION_VALUE ;;
  }

  dimension: dataset_metric_id {
    type: number
    sql: ${TABLE}.DATASET_METRIC_ID ;;
  }

  dimension: dataset_metric_query {
    type: string
    sql: ${TABLE}.DATASET_METRIC_QUERY ;;
  }

  dimension: dataset_metric_validation_active_flg {
    type: number
    sql: ${TABLE}.DATASET_METRIC_VALIDATION_ACTIVE_FLG ;;
  }

  dimension: dataset_metric_validation_id {
    type: number
    sql: ${TABLE}.DATASET_METRIC_VALIDATION_ID ;;
  }

  dimension: dataset_metric_workflow_active_flg {
    type: number
    sql: ${TABLE}.DATASET_METRIC_WORKFLOW_ACTIVE_FLG ;;
  }

  dimension: dataset_metric_workflow_id {
    type: number
    sql: ${TABLE}.DATASET_METRIC_WORKFLOW_ID ;;
  }

  dimension: dataset_metric_workflow_input_dataset_id {
    type: number
    sql: ${TABLE}.DATASET_METRIC_WORKFLOW_INPUT_DATASET_ID ;;
  }

  dimension: dataset_metric_workflow_input_dataset_name {
    type: string
    sql: ${TABLE}.DATASET_METRIC_WORKFLOW_INPUT_DATASET_NAME ;;
  }

  dimension: dataset_metric_workflow_name {
    type: string
    sql: ${TABLE}.DATASET_METRIC_WORKFLOW_NAME ;;
  }

  dimension: test_scenario_id {
    type: number
    sql: ${TABLE}.TEST_SCENARIO_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [dataset_metric_workflow_name, dataset_metric_workflow_input_dataset_name]
  }
}
