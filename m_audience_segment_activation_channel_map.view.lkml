view: m_audience_segment_activation_channel_map {
  sql_table_name: dbo.M_AUDIENCE_SEGMENT_ACTIVATION_CHANNEL_MAP ;;

  dimension: activation_channel_host_map_id {
    type: number
    sql: ${TABLE}.ACTIVATION_CHANNEL_HOST_MAP_ID ;;
  }

  dimension: active_flg {
    type: string
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: audience_segment_activation_channel_map_id {
    type: number
    sql: ${TABLE}.AUDIENCE_SEGMENT_ACTIVATION_CHANNEL_MAP_ID ;;
  }

  dimension: audience_segment_id {
    type: number
    sql: ${TABLE}.AUDIENCE_SEGMENT_ID ;;
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
