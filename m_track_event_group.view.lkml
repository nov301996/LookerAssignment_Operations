view: m_track_event_group {
  sql_table_name: dbo.M_TRACK_EVENT_GROUP ;;

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

  dimension: event_group_status_id {
    type: number
    sql: ${TABLE}.EVENT_GROUP_STATUS_ID ;;
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
