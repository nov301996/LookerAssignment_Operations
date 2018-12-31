view: m_track_event_log {
  sql_table_name: dbo.M_TRACK_EVENT_LOG ;;

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

  dimension: event_group_id {
    type: number
    sql: ${TABLE}.EVENT_GROUP_ID ;;
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
