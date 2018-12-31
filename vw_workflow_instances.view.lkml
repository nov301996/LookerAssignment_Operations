view: vw_workflow_instances {
  sql_table_name: dbo.VW_WORKFLOW_INSTANCES ;;

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

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  dimension: workflow_instance_elapsed_secs {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_ELAPSED_SECS ;;
  }

  dimension: workflow_instance_elapsed_time {
    type: string
    sql: ${TABLE}.WORKFLOW_INSTANCE_ELAPSED_TIME ;;
  }

  dimension_group: workflow_instance_end_dt {
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
    sql: ${TABLE}.WORKFLOW_INSTANCE_END_DT ;;
  }

  dimension_group: workflow_instance_exec_dt {
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
    sql: ${TABLE}.WORKFLOW_INSTANCE_EXEC_DT ;;
  }

  dimension: workflow_instance_exec_elapsed_secs {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_EXEC_ELAPSED_SECS ;;
  }

  dimension: workflow_instance_exec_elapsed_time {
    type: string
    sql: ${TABLE}.WORKFLOW_INSTANCE_EXEC_ELAPSED_TIME ;;
  }

  dimension: workflow_instance_id {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_ID ;;
  }

  dimension: workflow_instance_num_records_deleted {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_NUM_RECORDS_DELETED ;;
  }

  dimension: workflow_instance_num_records_inserted {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_NUM_RECORDS_INSERTED ;;
  }

  dimension: workflow_instance_num_records_updated {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_NUM_RECORDS_UPDATED ;;
  }

  dimension: workflow_instance_pre_exec_elapsed_secs {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_PRE_EXEC_ELAPSED_SECS ;;
  }

  dimension: workflow_instance_pre_exec_elapsed_time {
    type: string
    sql: ${TABLE}.WORKFLOW_INSTANCE_PRE_EXEC_ELAPSED_TIME ;;
  }

  dimension_group: workflow_instance_start_dt {
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
    sql: ${TABLE}.WORKFLOW_INSTANCE_START_DT ;;
  }

  dimension: workflow_instance_status_friendly_name {
    type: string
    sql: ${TABLE}.WORKFLOW_INSTANCE_STATUS_FRIENDLY_NAME ;;
  }

  dimension: workflow_instance_status_id {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_STATUS_ID ;;
  }

  dimension: workflow_instance_status_phase {
    type: string
    sql: ${TABLE}.WORKFLOW_INSTANCE_STATUS_PHASE ;;
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
    drill_fields: [workflow_instance_status_friendly_name, workflow_name]
  }
}
