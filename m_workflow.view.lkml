view: m_workflow {
  sql_table_name: dbo.M_WORKFLOW ;;

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.CLIENT_ID ;;
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

  dimension: max_consecutive_failed_workflow_reactivations {
    type: number
    sql: ${TABLE}.MAX_CONSECUTIVE_FAILED_WORKFLOW_REACTIVATIONS ;;
  }

  dimension: num_recurrences {
    type: number
    sql: ${TABLE}.NUM_RECURRENCES ;;
  }

  dimension: reactivate_failed_workflow_delay_secs {
    type: number
    sql: ${TABLE}.REACTIVATE_FAILED_WORKFLOW_DELAY_SECS ;;
  }

  dimension: reactivate_failed_workflow_flg {
    type: number
    sql: ${TABLE}.REACTIVATE_FAILED_WORKFLOW_FLG ;;
  }

  dimension: singleton_flg {
    type: number
    sql: ${TABLE}.SINGLETON_FLG ;;
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

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  dimension: workflow_name {
    type: string
    sql: ${TABLE}.WORKFLOW_NAME ;;
  }

  dimension: workflow_type_id {
    type: number
    sql: ${TABLE}.WORKFLOW_TYPE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [workflow_name]
  }
}
