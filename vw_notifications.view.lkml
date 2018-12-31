view: vw_notifications {
  sql_table_name: dbo.VW_NOTIFICATIONS ;;

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

  dimension: creator_user_id {
    type: number
    sql: ${TABLE}.CREATOR_USER_ID ;;
  }

  dimension: last_event_status {
    type: number
    sql: ${TABLE}.LAST_EVENT_STATUS ;;
  }

  dimension_group: last_notification_dt {
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
    sql: ${TABLE}.LAST_NOTIFICATION_DT ;;
  }

  dimension: last_update_user_id {
    type: number
    sql: ${TABLE}.LAST_UPDATE_USER_ID ;;
  }

  dimension: notification_active_flg {
    type: number
    sql: ${TABLE}.NOTIFICATION_ACTIVE_FLG ;;
  }

  dimension: notification_group_active_flg {
    type: number
    sql: ${TABLE}.NOTIFICATION_GROUP_ACTIVE_FLG ;;
  }

  dimension: notification_group_desc {
    type: string
    sql: ${TABLE}.NOTIFICATION_GROUP_DESC ;;
  }

  dimension: notification_group_id {
    type: number
    sql: ${TABLE}.NOTIFICATION_GROUP_ID ;;
  }

  dimension: notification_group_name {
    type: string
    sql: ${TABLE}.NOTIFICATION_GROUP_NAME ;;
  }

  dimension: notification_id {
    type: number
    sql: ${TABLE}.NOTIFICATION_ID ;;
  }

  dimension: notification_trigger_workflow_instance_status_id {
    type: number
    sql: ${TABLE}.NOTIFICATION_TRIGGER_WORKFLOW_INSTANCE_STATUS_ID ;;
  }

  dimension: recipient_user_id {
    type: number
    sql: ${TABLE}.RECIPIENT_USER_ID ;;
  }

  dimension: total_events {
    type: number
    sql: ${TABLE}.TOTAL_EVENTS ;;
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

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  dimension: workflow_name {
    type: string
    sql: ${TABLE}.WORKFLOW_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [notification_group_name, workflow_name]
  }
}
