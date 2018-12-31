view: m_notification {
  sql_table_name: dbo.M_NOTIFICATION ;;

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

  dimension: notification_group_id {
    type: number
    sql: ${TABLE}.NOTIFICATION_GROUP_ID ;;
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

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
