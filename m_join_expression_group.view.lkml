view: m_join_expression_group {
  sql_table_name: dbo.M_JOIN_EXPRESSION_GROUP ;;

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

  dimension: expression_group_level {
    type: number
    sql: ${TABLE}.EXPRESSION_GROUP_LEVEL ;;
  }

  dimension: join_expression_group_id {
    type: number
    sql: ${TABLE}.JOIN_EXPRESSION_GROUP_ID ;;
  }

  dimension: join_id {
    type: number
    sql: ${TABLE}.JOIN_ID ;;
  }

  dimension: operator_id {
    type: number
    sql: ${TABLE}.OPERATOR_ID ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ORDINAL_POSITION ;;
  }

  dimension: parent_join_expression_group_id {
    type: number
    sql: ${TABLE}.PARENT_JOIN_EXPRESSION_GROUP_ID ;;
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
