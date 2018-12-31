view: m_activation_channel {
  sql_table_name: dbo.M_ACTIVATION_CHANNEL ;;

  dimension: activation_channel_description {
    type: string
    sql: ${TABLE}.ACTIVATION_CHANNEL_DESCRIPTION ;;
  }

  dimension: activation_channel_id {
    type: number
    sql: ${TABLE}.ACTIVATION_CHANNEL_ID ;;
  }

  dimension: activation_channel_name {
    type: string
    sql: ${TABLE}.ACTIVATION_CHANNEL_NAME ;;
  }

  dimension: active_flg {
    type: string
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

  dimension: del_workflow_flg {
    type: string
    sql: ${TABLE}.DEL_WORKFLOW_FLG ;;
  }

  dimension: host_connection_type_id {
    type: number
    sql: ${TABLE}.HOST_CONNECTION_TYPE_ID ;;
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
    drill_fields: [activation_channel_name]
  }
}
