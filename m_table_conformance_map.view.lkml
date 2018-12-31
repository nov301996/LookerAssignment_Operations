view: m_table_conformance_map {
  sql_table_name: dbo.M_TABLE_CONFORMANCE_MAP ;;

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
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

  dimension: lookup_column_name {
    type: string
    sql: ${TABLE}.LOOKUP_COLUMN_NAME ;;
  }

  dimension: lookup_table_dataset_id {
    type: number
    sql: ${TABLE}.LOOKUP_TABLE_DATASET_ID ;;
  }

  dimension: source_column_expression {
    type: string
    sql: ${TABLE}.SOURCE_COLUMN_EXPRESSION ;;
  }

  dimension: table_conformance_id {
    type: number
    sql: ${TABLE}.TABLE_CONFORMANCE_ID ;;
  }

  dimension: table_conformance_map_id {
    type: number
    sql: ${TABLE}.TABLE_CONFORMANCE_MAP_ID ;;
  }

  dimension: target_column_name {
    type: string
    sql: ${TABLE}.TARGET_COLUMN_NAME ;;
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
    drill_fields: [target_column_name, lookup_column_name]
  }
}
