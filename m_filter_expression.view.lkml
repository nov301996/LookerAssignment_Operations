view: m_filter_expression {
  sql_table_name: dbo.M_FILTER_EXPRESSION ;;

  dimension: column_id {
    type: number
    sql: ${TABLE}.COLUMN_ID ;;
  }

  dimension: column_value {
    type: string
    sql: ${TABLE}.COLUMN_VALUE ;;
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

  dimension: filter_expression_group_id {
    type: number
    sql: ${TABLE}.FILTER_EXPRESSION_GROUP_ID ;;
  }

  dimension: filter_expression_id {
    type: number
    sql: ${TABLE}.FILTER_EXPRESSION_ID ;;
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
