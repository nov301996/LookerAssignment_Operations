view: m_dataset_metric {
  sql_table_name: dbo.M_DATASET_METRIC ;;

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

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: dataset_metric_category {
    type: string
    sql: ${TABLE}.DATASET_METRIC_CATEGORY ;;
  }

  dimension: dataset_metric_desc {
    type: string
    sql: ${TABLE}.DATASET_METRIC_DESC ;;
  }

  dimension: dataset_metric_id {
    type: number
    sql: ${TABLE}.DATASET_METRIC_ID ;;
  }

  dimension: dataset_metric_query {
    type: string
    sql: ${TABLE}.DATASET_METRIC_QUERY ;;
  }

  dimension: dataset_metric_type_id {
    type: number
    sql: ${TABLE}.DATASET_METRIC_TYPE_ID ;;
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
