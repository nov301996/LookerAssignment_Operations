view: m_table_aggregation {
  sql_table_name: dbo.M_TABLE_AGGREGATION ;;

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: aggregate_dataset_id {
    type: number
    sql: ${TABLE}.AGGREGATE_DATASET_ID ;;
  }

  dimension: aggregate_maintenance_strategy {
    type: string
    sql: ${TABLE}.AGGREGATE_MAINTENANCE_STRATEGY ;;
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

  dimension: detail_dataset_id {
    type: number
    sql: ${TABLE}.DETAIL_DATASET_ID ;;
  }

  dimension: filter_expression {
    type: string
    sql: ${TABLE}.FILTER_EXPRESSION ;;
  }

  dimension: table_aggregation_id {
    type: number
    sql: ${TABLE}.TABLE_AGGREGATION_ID ;;
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
