view: m_notification_group {
  sql_table_name: dbo.M_NOTIFICATION_GROUP ;;

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
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

  dimension: creator_user_id {
    type: number
    sql: ${TABLE}.CREATOR_USER_ID ;;
  }

  dimension: last_update_user_id {
    type: number
    sql: ${TABLE}.LAST_UPDATE_USER_ID ;;
  }

  dimension: notification_group_desc {
    type: string
    sql: ${TABLE}.NOTIFICATION_GROUP_DESC ;;
  }

  dimension: notification_group_id {
    type: number
    sql: ${TABLE}.NOTIFICATION_GROUP_ID ;;
  }

  dimension: notification_group_name {
    type: string
    sql: ${TABLE}.NOTIFICATION_GROUP_NAME ;;
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
    drill_fields: [notification_group_name]
  }
}
