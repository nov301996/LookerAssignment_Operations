view: m_audience_segment_group_map {
  sql_table_name: dbo.M_AUDIENCE_SEGMENT_GROUP_MAP ;;

  dimension: active_flg {
    type: string
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: audience_segment_group_map_id {
    type: number
    sql: ${TABLE}.AUDIENCE_SEGMENT_GROUP_MAP_ID ;;
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

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ORDINAL_POSITION ;;
  }

  dimension: segment_group_id {
    type: number
    sql: ${TABLE}.SEGMENT_GROUP_ID ;;
  }

  dimension: segment_id {
    type: number
    sql: ${TABLE}.SEGMENT_ID ;;
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
