view: vw_workflow_execution_status {
  sql_table_name: dbo.VW_WORKFLOW_EXECUTION_STATUS ;;

  dimension: dsi_in_stauts {
    type: string
    sql: ${TABLE}.DSI_IN_STAUTS ;;
  }

  dimension: dsi_out_status {
    type: string
    sql: ${TABLE}.DSI_OUT_STATUS ;;
  }

  dimension_group: end_dt {
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
    sql: ${TABLE}.END_DT ;;
  }

  dimension: event_group_id {
    type: number
    sql: ${TABLE}.EVENT_GROUP_ID ;;
  }

  dimension: file_nm {
    type: string
    sql: ${TABLE}.FILE_NM ;;
  }

  dimension: input_dataset {
    type: number
    sql: ${TABLE}.INPUT_DATASET ;;
  }

  dimension: input_dataset_instance {
    type: number
    sql: ${TABLE}.INPUT_DATASET_INSTANCE ;;
  }

  dimension: input_dataset_name {
    type: string
    sql: ${TABLE}.INPUT_DATASET_NAME ;;
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

  dimension: oozie_job_url {
    type: string
    sql: ${TABLE}.OOZIE_JOB_URL ;;
  }

  dimension: output_dataset {
    type: number
    sql: ${TABLE}.OUTPUT_DATASET ;;
  }

  dimension: output_dataset_instance {
    type: number
    sql: ${TABLE}.OUTPUT_DATASET_INSTANCE ;;
  }

  dimension: output_dataset_name {
    type: string
    sql: ${TABLE}.OUTPUT_DATASET_NAME ;;
  }

  dimension: run_time_in_mins {
    type: number
    sql: ${TABLE}.RUN_TIME_IN_MINS ;;
  }

  dimension_group: start_dt {
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
    sql: ${TABLE}.START_DT ;;
  }

  dimension: wf_active_flg {
    type: number
    sql: ${TABLE}.WF_ACTIVE_FLG ;;
  }

  dimension: wf_exec_subsystem_name {
    type: string
    sql: ${TABLE}.WF_EXEC_SUBSYSTEM_NAME ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  dimension: workflow_instance_id {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_ID ;;
  }

  dimension: workflow_instance_status {
    type: string
    sql: ${TABLE}.WORKFLOW_INSTANCE_STATUS ;;
  }

  dimension: workflow_name {
    type: string
    sql: ${TABLE}.WORKFLOW_NAME ;;
  }

  dimension: workflow_type {
    type: string
    sql: ${TABLE}.WORKFLOW_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [workflow_name, input_dataset_name, output_dataset_name, wf_exec_subsystem_name]
  }
}
