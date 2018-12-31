view: m_content_tag {
  sql_table_name: dbo.M_CONTENT_TAG ;;

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.CLIENT_ID ;;
  }

  dimension: content_tag_group {
    type: string
    sql: ${TABLE}.CONTENT_TAG_GROUP ;;
  }

  dimension: content_tag_id {
    type: number
    sql: ${TABLE}.CONTENT_TAG_ID ;;
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

  dimension: matching_expression {
    type: string
    sql: ${TABLE}.MATCHING_EXPRESSION ;;
  }

  dimension: tagging_expression {
    type: string
    sql: ${TABLE}.TAGGING_EXPRESSION ;;
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
