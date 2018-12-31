view: m_track_ui_log {
  sql_table_name: dbo.M_TRACK_UI_LOG ;;

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

  dimension: ui_log_call_site {
    type: string
    sql: ${TABLE}.UI_LOG_CALL_SITE ;;
  }

  dimension: ui_log_exception {
    type: string
    sql: ${TABLE}.UI_LOG_EXCEPTION ;;
  }

  dimension: ui_log_id {
    type: number
    sql: ${TABLE}.UI_LOG_ID ;;
  }

  dimension: ui_log_level {
    type: string
    sql: ${TABLE}.UI_LOG_LEVEL ;;
  }

  dimension: ui_log_machine_name {
    type: string
    sql: ${TABLE}.UI_LOG_MACHINE_NAME ;;
  }

  dimension: ui_log_message {
    type: string
    sql: ${TABLE}.UI_LOG_MESSAGE ;;
  }

  dimension: ui_log_stack_trace {
    type: string
    sql: ${TABLE}.UI_LOG_STACK_TRACE ;;
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
    drill_fields: [ui_log_machine_name]
  }
}
