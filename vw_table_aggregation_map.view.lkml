view: vw_table_aggregation_map {
  sql_table_name: dbo.VW_TABLE_AGGREGATION_MAP ;;

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

  dimension: data_columns_expression {
    type: string
    sql: ${TABLE}.DATA_COLUMNS_EXPRESSION ;;
  }

  dimension: detail_dataset_id {
    type: number
    sql: ${TABLE}.DETAIL_DATASET_ID ;;
  }

  dimension: filter_expression {
    type: string
    sql: ${TABLE}.FILTER_EXPRESSION ;;
  }

  dimension: group_by_columns_expression {
    type: string
    sql: ${TABLE}.GROUP_BY_COLUMNS_EXPRESSION ;;
  }

  dimension: primary_key_columns_expression {
    type: string
    sql: ${TABLE}.PRIMARY_KEY_COLUMNS_EXPRESSION ;;
  }

  dimension: table_aggregation_id {
    type: number
    sql: ${TABLE}.TABLE_AGGREGATION_ID ;;
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
