view: m_campaign_audience_segment {
  sql_table_name: dbo.M_CAMPAIGN_AUDIENCE_SEGMENT ;;

  dimension: active_flg {
    type: string
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: audience_segment_id {
    type: number
    sql: ${TABLE}.AUDIENCE_SEGMENT_ID ;;
  }

  dimension: audience_segment_priority {
    type: number
    sql: ${TABLE}.AUDIENCE_SEGMENT_PRIORITY ;;
  }

  dimension: campaign_audience_segment_id {
    type: number
    sql: ${TABLE}.CAMPAIGN_AUDIENCE_SEGMENT_ID ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CAMPAIGN_ID ;;
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

  dimension: dataset_metric_id {
    type: number
    sql: ${TABLE}.DATASET_METRIC_ID ;;
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
