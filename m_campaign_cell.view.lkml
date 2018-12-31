view: m_campaign_cell {
  sql_table_name: dbo.M_CAMPAIGN_CELL ;;

  dimension: active_flg {
    type: string
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: campaign_audience_segment_id {
    type: number
    sql: ${TABLE}.CAMPAIGN_AUDIENCE_SEGMENT_ID ;;
  }

  dimension: campaign_cell_desc {
    type: string
    sql: ${TABLE}.CAMPAIGN_CELL_DESC ;;
  }

  dimension: campaign_cell_id {
    type: number
    sql: ${TABLE}.CAMPAIGN_CELL_ID ;;
  }

  dimension: campaign_cell_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_CELL_NAME ;;
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

  dimension: keycode {
    type: string
    sql: ${TABLE}.KEYCODE ;;
  }

  dimension: num_split_shares {
    type: number
    sql: ${TABLE}.NUM_SPLIT_SHARES ;;
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
    drill_fields: [campaign_cell_name]
  }
}
