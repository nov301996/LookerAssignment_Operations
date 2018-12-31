view: m_workflow_dispatch_window {
  sql_table_name: dbo.M_WORKFLOW_DISPATCH_WINDOW ;;

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

  dimension: window_desc {
    type: string
    sql: ${TABLE}.WINDOW_DESC ;;
  }

  dimension: window_enabled {
    type: number
    sql: ${TABLE}.WINDOW_ENABLED ;;
  }

  dimension_group: window_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.WINDOW_END_DATE ;;
  }

  dimension: window_end_time {
    type: string
    sql: ${TABLE}.WINDOW_END_TIME ;;
  }

  dimension: window_fri_flg {
    type: number
    sql: ${TABLE}.WINDOW_FRI_FLG ;;
  }

  dimension: window_interval {
    type: number
    sql: ${TABLE}.WINDOW_INTERVAL ;;
  }

  dimension: window_mon_flg {
    type: number
    sql: ${TABLE}.WINDOW_MON_FLG ;;
  }

  dimension: window_recurrence_factor {
    type: number
    sql: ${TABLE}.WINDOW_RECURRENCE_FACTOR ;;
  }

  dimension: window_relative_interval {
    type: number
    sql: ${TABLE}.WINDOW_RELATIVE_INTERVAL ;;
  }

  dimension: window_sat_flg {
    type: number
    sql: ${TABLE}.WINDOW_SAT_FLG ;;
  }

  dimension_group: window_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.WINDOW_START_DATE ;;
  }

  dimension: window_start_time {
    type: string
    sql: ${TABLE}.WINDOW_START_TIME ;;
  }

  dimension: window_subday_interval {
    type: number
    sql: ${TABLE}.WINDOW_SUBDAY_INTERVAL ;;
  }

  dimension: window_subday_type {
    type: number
    sql: ${TABLE}.WINDOW_SUBDAY_TYPE ;;
  }

  dimension: window_sun_flg {
    type: number
    sql: ${TABLE}.WINDOW_SUN_FLG ;;
  }

  dimension: window_thu_flg {
    type: number
    sql: ${TABLE}.WINDOW_THU_FLG ;;
  }

  dimension: window_tue_flg {
    type: number
    sql: ${TABLE}.WINDOW_TUE_FLG ;;
  }

  dimension: window_type {
    type: number
    sql: ${TABLE}.WINDOW_TYPE ;;
  }

  dimension: window_wed_flg {
    type: number
    sql: ${TABLE}.WINDOW_WED_FLG ;;
  }

  dimension: workflow_dispatch_window_id {
    type: number
    sql: ${TABLE}.WORKFLOW_DISPATCH_WINDOW_ID ;;
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
