view: m_host_connection_type {
  sql_table_name: dbo.M_HOST_CONNECTION_TYPE ;;

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

  dimension: host_connection_type_description {
    type: string
    sql: ${TABLE}.HOST_CONNECTION_TYPE_DESCRIPTION ;;
  }

  dimension: host_connection_type_id {
    type: number
    sql: ${TABLE}.HOST_CONNECTION_TYPE_ID ;;
  }

  dimension: host_connection_type_name {
    type: string
    sql: ${TABLE}.HOST_CONNECTION_TYPE_NAME ;;
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
    drill_fields: [host_connection_type_name]
  }
}
