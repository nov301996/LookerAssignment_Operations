view: vw_workflow_datasets {
  sql_table_name: dbo.VW_WORKFLOW_DATASETS ;;

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.CLIENT_ID ;;
  }

  dimension: client_nm {
    type: string
    sql: ${TABLE}.CLIENT_NM ;;
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

  dimension: data_classification_id {
    type: number
    sql: ${TABLE}.DATA_CLASSIFICATION_ID ;;
  }

  dimension: data_columns {
    type: string
    sql: ${TABLE}.DATA_COLUMNS ;;
  }

  dimension: dataset_classification_desc {
    type: string
    sql: ${TABLE}.DATASET_CLASSIFICATION_DESC ;;
  }

  dimension: dataset_desc {
    type: string
    sql: ${TABLE}.DATASET_DESC ;;
  }

  dimension: dataset_direction {
    type: string
    sql: ${TABLE}.DATASET_DIRECTION ;;
  }

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}.DATASET_NAME ;;
  }

  dimension: dataset_scope {
    type: string
    sql: ${TABLE}.DATASET_SCOPE ;;
  }

  dimension: dataset_type {
    type: string
    sql: ${TABLE}.DATASET_TYPE ;;
  }

  dimension: dispatch_condition {
    type: string
    sql: ${TABLE}.DISPATCH_CONDITION ;;
  }

  dimension: fail_hung_workflow_flg {
    type: number
    sql: ${TABLE}.FAIL_HUNG_WORKFLOW_FLG ;;
  }

  dimension: fail_hung_workflow_runtime_threshold_secs {
    type: number
    sql: ${TABLE}.FAIL_HUNG_WORKFLOW_RUNTIME_THRESHOLD_SECS ;;
  }

  dimension: fail_hung_workflow_sample_size {
    type: number
    sql: ${TABLE}.FAIL_HUNG_WORKFLOW_SAMPLE_SIZE ;;
  }

  dimension: fq_object_name {
    type: string
    sql: ${TABLE}.FQ_OBJECT_NAME ;;
  }

  dimension: host_connection_type {
    type: string
    sql: ${TABLE}.HOST_CONNECTION_TYPE ;;
  }

  dimension: host_desc {
    type: string
    sql: ${TABLE}.HOST_DESC ;;
  }

  dimension: max_consecutive_failed_workflow_reactivations {
    type: number
    sql: ${TABLE}.MAX_CONSECUTIVE_FAILED_WORKFLOW_REACTIVATIONS ;;
  }

  dimension: num_recurrences {
    type: number
    sql: ${TABLE}.NUM_RECURRENCES ;;
  }

  dimension: object_name {
    type: string
    sql: ${TABLE}.OBJECT_NAME ;;
  }

  dimension: primary_input_dataset_id {
    type: number
    sql: ${TABLE}.PRIMARY_INPUT_DATASET_ID ;;
  }

  dimension: primary_key_columns {
    type: string
    sql: ${TABLE}.PRIMARY_KEY_COLUMNS ;;
  }

  dimension: primary_output_dataset_id {
    type: number
    sql: ${TABLE}.PRIMARY_OUTPUT_DATASET_ID ;;
  }

  dimension: reactivate_failed_workflow_delay_secs {
    type: number
    sql: ${TABLE}.REACTIVATE_FAILED_WORKFLOW_DELAY_SECS ;;
  }

  dimension: reactivate_failed_workflow_flg {
    type: number
    sql: ${TABLE}.REACTIVATE_FAILED_WORKFLOW_FLG ;;
  }

  dimension: relative_object_description {
    type: string
    sql: ${TABLE}.RELATIVE_OBJECT_DESCRIPTION ;;
  }

  dimension: singleton_flg {
    type: number
    sql: ${TABLE}.SINGLETON_FLG ;;
  }

  dimension: system_nm {
    type: string
    sql: ${TABLE}.SYSTEM_NM ;;
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

  dimension: workflow_desc {
    type: string
    sql: ${TABLE}.WORKFLOW_DESC ;;
  }

  dimension: workflow_execution_subsystem_id {
    type: number
    sql: ${TABLE}.WORKFLOW_EXECUTION_SUBSYSTEM_ID ;;
  }

  dimension: workflow_execution_subsystem_name {
    type: string
    sql: ${TABLE}.WORKFLOW_EXECUTION_SUBSYSTEM_NAME ;;
  }

  dimension: workflow_executor_type {
    type: string
    sql: ${TABLE}.WORKFLOW_EXECUTOR_TYPE ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  dimension: workflow_name {
    type: string
    sql: ${TABLE}.WORKFLOW_NAME ;;
  }

  dimension: workflow_type {
    type: string
    sql: ${TABLE}.WORKFLOW_TYPE ;;
  }

  dimension: workflow_type_detail {
    type: string
    sql: ${TABLE}.WORKFLOW_TYPE_DETAIL ;;
  }

  dimension: workflow_type_id {
    type: number
    sql: ${TABLE}.WORKFLOW_TYPE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [workflow_name, workflow_execution_subsystem_name, dataset_name, object_name, fq_object_name]
  }
}
