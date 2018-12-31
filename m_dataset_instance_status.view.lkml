view: m_dataset_instance_status {
  sql_table_name: dbo.M_DATASET_INSTANCE_STATUS ;;

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

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: status_desc {
    type: string
    sql: ${TABLE}.STATUS_DESC ;;
  }

  dimension: status_friendly_name {
    type: string
    sql: ${TABLE}.STATUS_FRIENDLY_NAME ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.STATUS_ID ;;
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
    drill_fields: [status_friendly_name]
  }
}
