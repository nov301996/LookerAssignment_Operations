view: m_track_source_system_scan {
  sql_table_name: dbo.M_TRACK_SOURCE_SYSTEM_SCAN ;;

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

  dimension: source_system_id {
    type: number
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension_group: source_system_scan_end_dt {
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
    sql: ${TABLE}.SOURCE_SYSTEM_SCAN_END_DT ;;
  }

  dimension: source_system_scan_id {
    type: number
    sql: ${TABLE}.SOURCE_SYSTEM_SCAN_ID ;;
  }

  dimension_group: source_system_scan_start_dt {
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
    sql: ${TABLE}.SOURCE_SYSTEM_SCAN_START_DT ;;
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
