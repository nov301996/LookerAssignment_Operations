view: vw_workflow_instance_events {
  sql_table_name: dbo.VW_WORKFLOW_INSTANCE_EVENTS ;;

  dimension_group: event_generated_dt {
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
    sql: ${TABLE}.EVENT_GENERATED_DT ;;
  }

  dimension: event_generated_user {
    type: string
    sql: ${TABLE}.EVENT_GENERATED_USER ;;
  }

  dimension_group: event_group_closed_dt {
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
    sql: ${TABLE}.EVENT_GROUP_CLOSED_DT ;;
  }

  dimension: event_group_desc {
    type: string
    sql: ${TABLE}.EVENT_GROUP_DESC ;;
  }

  dimension: event_group_id {
    type: number
    sql: ${TABLE}.EVENT_GROUP_ID ;;
  }

  dimension_group: event_group_opened_dt {
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
    sql: ${TABLE}.EVENT_GROUP_OPENED_DT ;;
  }

  dimension: event_group_opened_user {
    type: string
    sql: ${TABLE}.EVENT_GROUP_OPENED_USER ;;
  }

  dimension: event_group_status_desc {
    type: string
    sql: ${TABLE}.EVENT_GROUP_STATUS_DESC ;;
  }

  dimension: event_group_status_id {
    type: number
    sql: ${TABLE}.EVENT_GROUP_STATUS_ID ;;
  }

  dimension_group: event_group_updated_dt {
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
    sql: ${TABLE}.EVENT_GROUP_UPDATED_DT ;;
  }

  dimension: event_group_updated_user {
    type: string
    sql: ${TABLE}.EVENT_GROUP_UPDATED_USER ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.EVENT_ID ;;
  }

  dimension: event_msg {
    type: string
    sql: ${TABLE}.EVENT_MSG ;;
  }

  dimension: event_severity {
    type: string
    sql: ${TABLE}.EVENT_SEVERITY ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  dimension: workflow_instance_elapsed_secs {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_ELAPSED_SECS ;;
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

  dimension: workflow_instance_id {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_ID ;;
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

  dimension: workflow_type_id {
    type: number
    sql: ${TABLE}.WORKFLOW_TYPE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [workflow_instance_status_friendly_name, workflow_name]
  }
}
