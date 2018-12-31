view: m_semantic_view_map {
  sql_table_name: dbo.M_SEMANTIC_VIEW_MAP ;;

  dimension: column_alias {
    type: string
    sql: ${TABLE}.COLUMN_ALIAS ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}.COLUMN_NAME ;;
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

  dimension: semantic_map_id {
    type: number
    sql: ${TABLE}.SEMANTIC_MAP_ID ;;
  }

  dimension: source_dataset_id {
    type: number
    sql: ${TABLE}.SOURCE_DATASET_ID ;;
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
    drill_fields: [column_name]
  }
}
