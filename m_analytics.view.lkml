view: m_analytics {
  sql_table_name: dbo.M_ANALYTICS ;;

  dimension: active_flg {
    type: string
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: analytics_id {
    type: number
    sql: ${TABLE}.ANALYTICS_ID ;;
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

  dimension: model_analytics_wf_id {
    type: number
    sql: ${TABLE}.MODEL_ANALYTICS_WF_ID ;;
  }

  dimension: model_desc {
    type: string
    sql: ${TABLE}.MODEL_DESC ;;
  }

  dimension: model_doc {
    type: string
    sql: ${TABLE}.MODEL_DOC ;;
  }

  dimension: model_doc_name {
    type: string
    sql: ${TABLE}.MODEL_DOC_NAME ;;
  }

  dimension: model_extract_ds_id {
    type: number
    sql: ${TABLE}.MODEL_EXTRACT_DS_ID ;;
  }

  dimension: model_location {
    type: string
    sql: ${TABLE}.MODEL_LOCATION ;;
  }

  dimension: model_log_location {
    type: string
    sql: ${TABLE}.MODEL_LOG_LOCATION ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.MODEL_NAME ;;
  }

  dimension: model_statistics {
    type: string
    sql: ${TABLE}.MODEL_STATISTICS ;;
  }

  dimension: model_transfer_wf_id {
    type: number
    sql: ${TABLE}.MODEL_TRANSFER_WF_ID ;;
  }

  dimension: model_type {
    type: string
    sql: ${TABLE}.MODEL_TYPE ;;
  }

  dimension: output_entity_id {
    type: number
    sql: ${TABLE}.OUTPUT_ENTITY_ID ;;
  }

  dimension: sample_out_location {
    type: string
    sql: ${TABLE}.SAMPLE_OUT_LOCATION ;;
  }

  dimension: score_analytics_wf_id {
    type: number
    sql: ${TABLE}.SCORE_ANALYTICS_WF_ID ;;
  }

  dimension: score_extract_ds_id {
    type: number
    sql: ${TABLE}.SCORE_EXTRACT_DS_ID ;;
  }

  dimension: score_log_location {
    type: string
    sql: ${TABLE}.SCORE_LOG_LOCATION ;;
  }

  dimension: score_transfer_wf_id {
    type: number
    sql: ${TABLE}.SCORE_TRANSFER_WF_ID ;;
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
    drill_fields: [model_name, model_doc_name]
  }
}
