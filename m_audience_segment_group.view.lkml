view: m_audience_segment_group {
  sql_table_name: dbo.M_AUDIENCE_SEGMENT_GROUP ;;

  dimension: active_flg {
    type: string
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: audience_segment_group_description {
    type: string
    sql: ${TABLE}.AUDIENCE_SEGMENT_GROUP_DESCRIPTION ;;
  }

  dimension: audience_segment_group_id {
    type: number
    sql: ${TABLE}.AUDIENCE_SEGMENT_GROUP_ID ;;
  }

  dimension: audience_segment_group_name {
    type: string
    sql: ${TABLE}.AUDIENCE_SEGMENT_GROUP_NAME ;;
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
    drill_fields: [audience_segment_group_name]
  }
}
