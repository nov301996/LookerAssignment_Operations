view: m_join_expression {
  sql_table_name: dbo.M_JOIN_EXPRESSION ;;

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

  dimension: join_expression_group_id {
    type: number
    sql: ${TABLE}.JOIN_EXPRESSION_GROUP_ID ;;
  }

  dimension: join_expression_id {
    type: number
    sql: ${TABLE}.JOIN_EXPRESSION_ID ;;
  }

  dimension: left_column_dataset_datatype_map_id {
    type: number
    sql: ${TABLE}.LEFT_COLUMN_DATASET_DATATYPE_MAP_ID ;;
  }

  dimension: operator_id {
    type: number
    sql: ${TABLE}.OPERATOR_ID ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ORDINAL_POSITION ;;
  }

  dimension: right_column_dataset_datatype_map_id {
    type: number
    sql: ${TABLE}.RIGHT_COLUMN_DATASET_DATATYPE_MAP_ID ;;
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
