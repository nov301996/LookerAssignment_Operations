view: m_audience_segment {
  sql_table_name: dbo.M_AUDIENCE_SEGMENT ;;

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: audience_segment_id {
    type: number
    sql: ${TABLE}.AUDIENCE_SEGMENT_ID ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.CLIENT_ID ;;
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

  dimension: input_dataset_ids {
    type: string
    sql: ${TABLE}.INPUT_DATASET_IDS ;;
  }

  dimension: segment_definition_sql {
    type: string
    sql: ${TABLE}.SEGMENT_DEFINITION_SQL ;;
  }

  dimension: segment_desc {
    type: string
    sql: ${TABLE}.SEGMENT_DESC ;;
  }

  dimension: segment_name {
    type: string
    sql: ${TABLE}.SEGMENT_NAME ;;
  }

  dimension: segment_subtype {
    type: string
    sql: ${TABLE}.SEGMENT_SUBTYPE ;;
  }

  dimension: segment_type {
    type: string
    sql: ${TABLE}.SEGMENT_TYPE ;;
  }

  dimension: segmentation_method {
    type: string
    sql: ${TABLE}.SEGMENTATION_METHOD ;;
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
    drill_fields: [segment_name]
  }
}
