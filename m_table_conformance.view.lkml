view: m_table_conformance {
  sql_table_name: dbo.M_TABLE_CONFORMANCE ;;

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

  dimension: filter_expression {
    type: string
    sql: ${TABLE}.FILTER_EXPRESSION ;;
  }

  dimension: source_table_dataset_id {
    type: number
    sql: ${TABLE}.SOURCE_TABLE_DATASET_ID ;;
  }

  dimension: table_conformance_id {
    type: number
    sql: ${TABLE}.TABLE_CONFORMANCE_ID ;;
  }

  dimension: target_table_dataset_id {
    type: number
    sql: ${TABLE}.TARGET_TABLE_DATASET_ID ;;
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

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
