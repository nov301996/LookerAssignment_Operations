view: vw_ssis_log_event_groups {
  sql_table_name: dbo.VW_SSIS_LOG_EVENT_GROUPS ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: computer {
    type: string
    sql: ${TABLE}.computer ;;
  }

  dimension: databytes {
    type: string
    sql: ${TABLE}.databytes ;;
  }

  dimension: datacode {
    type: number
    sql: ${TABLE}.datacode ;;
  }

  dimension_group: endtime {
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
    sql: ${TABLE}.endtime ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
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

  dimension: event_group_status_desc {
    type: string
    sql: ${TABLE}.EVENT_GROUP_STATUS_DESC ;;
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

  dimension: executionid {
    type: string
    sql: ${TABLE}.executionid ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}.operator ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: sourceid {
    type: string
    sql: ${TABLE}.sourceid ;;
  }

  dimension_group: starttime {
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
    sql: ${TABLE}.starttime ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
