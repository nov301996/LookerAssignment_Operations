view: m_track_notification_instance {
  sql_table_name: dbo.M_TRACK_NOTIFICATION_INSTANCE ;;

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

  dimension: event_id {
    type: number
    sql: ${TABLE}.EVENT_ID ;;
  }

  dimension: notification_id {
    type: number
    sql: ${TABLE}.NOTIFICATION_ID ;;
  }

  dimension: notification_instance_id {
    type: number
    sql: ${TABLE}.NOTIFICATION_INSTANCE_ID ;;
  }

  dimension: notification_read_flg {
    type: number
    sql: ${TABLE}.NOTIFICATION_READ_FLG ;;
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
