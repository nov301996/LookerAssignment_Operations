view: m_join_return_column {
  sql_table_name: dbo.M_JOIN_RETURN_COLUMN ;;

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

  dimension: join_id {
    type: number
    sql: ${TABLE}.JOIN_ID ;;
  }

  dimension: join_return_column_id {
    type: number
    sql: ${TABLE}.JOIN_RETURN_COLUMN_ID ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ORDINAL_POSITION ;;
  }

  dimension: return_column_alias {
    type: string
    sql: ${TABLE}.RETURN_COLUMN_ALIAS ;;
  }

  dimension: source_column_dataset_datatype_map_id {
    type: number
    sql: ${TABLE}.SOURCE_COLUMN_DATASET_DATATYPE_MAP_ID ;;
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
