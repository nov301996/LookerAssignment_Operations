view: m_campaign {
  sql_table_name: dbo.M_CAMPAIGN ;;

  dimension: active_flg {
    type: string
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: business_unit {
    type: string
    sql: ${TABLE}.BUSINESS_UNIT ;;
  }

  dimension: campaign_desc {
    type: string
    sql: ${TABLE}.CAMPAIGN_DESC ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }

  dimension: campaign_priority {
    type: number
    sql: ${TABLE}.CAMPAIGN_PRIORITY ;;
  }

  dimension_group: campaign_start_dt {
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
    sql: ${TABLE}.CAMPAIGN_START_DT ;;
  }

  dimension: campaign_type_id {
    type: number
    sql: ${TABLE}.CAMPAIGN_TYPE_ID ;;
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

  dimension: external_campaign_id {
    type: string
    sql: ${TABLE}.EXTERNAL_CAMPAIGN_ID ;;
  }

  dimension: program_id {
    type: number
    sql: ${TABLE}.PROGRAM_ID ;;
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
    drill_fields: [campaign_name]
  }
}
