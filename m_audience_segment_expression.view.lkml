view: m_audience_segment_expression {
  sql_table_name: dbo.M_AUDIENCE_SEGMENT_EXPRESSION ;;

  dimension: attribute_values {
    type: string
    sql: ${TABLE}.ATTRIBUTE_VALUES ;;
  }

  dimension: audience_segment_expression_group_id {
    type: number
    sql: ${TABLE}.AUDIENCE_SEGMENT_EXPRESSION_GROUP_ID ;;
  }

  dimension: audience_segment_expression_id {
    type: number
    sql: ${TABLE}.AUDIENCE_SEGMENT_EXPRESSION_ID ;;
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

  dimension: individual_attribute_id {
    type: number
    sql: ${TABLE}.INDIVIDUAL_ATTRIBUTE_ID ;;
  }

  dimension: operator_id {
    type: number
    sql: ${TABLE}.OPERATOR_ID ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ORDINAL_POSITION ;;
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
