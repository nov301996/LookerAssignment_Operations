view: m_track_lock {
  sql_table_name: dbo.M_TRACK_LOCK ;;

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

  dimension: lock_expiration {
    type: number
    sql: ${TABLE}.LOCK_EXPIRATION ;;
  }

  dimension: lock_id {
    type: string
    sql: ${TABLE}.LOCK_ID ;;
  }

  dimension: lock_owner {
    type: string
    sql: ${TABLE}.LOCK_OWNER ;;
  }

  dimension: object_id {
    type: string
    sql: ${TABLE}.OBJECT_ID ;;
  }

  dimension: object_type {
    type: string
    sql: ${TABLE}.OBJECT_TYPE ;;
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
