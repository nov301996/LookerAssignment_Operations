view: m_host {
  sql_table_name: dbo.M_HOST ;;

  dimension: active_flg {
    type: number
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

  dimension: host_access_key {
    type: string
    sql: ${TABLE}.HOST_ACCESS_KEY ;;
  }

  dimension: host_auth_secret_key {
    type: string
    sql: ${TABLE}.HOST_AUTH_SECRET_KEY ;;
  }

  dimension: host_auth_token {
    type: string
    sql: ${TABLE}.HOST_AUTH_TOKEN ;;
  }

  dimension: host_catalog {
    type: string
    sql: ${TABLE}.HOST_CATALOG ;;
  }

  dimension: host_connection_type {
    type: string
    sql: ${TABLE}.HOST_CONNECTION_TYPE ;;
  }

  dimension: host_desc {
    type: string
    sql: ${TABLE}.HOST_DESC ;;
  }

  dimension: host_external_flg {
    type: number
    sql: ${TABLE}.HOST_EXTERNAL_FLG ;;
  }

  dimension: host_hostname {
    type: string
    sql: ${TABLE}.HOST_HOSTNAME ;;
  }

  dimension: host_id {
    type: number
    sql: ${TABLE}.HOST_ID ;;
  }

  dimension: host_jdbc_driver {
    type: string
    sql: ${TABLE}.HOST_JDBC_DRIVER ;;
  }

  dimension: host_odbc_driver {
    type: string
    sql: ${TABLE}.HOST_ODBC_DRIVER ;;
  }

  dimension: host_oledb_provider {
    type: string
    sql: ${TABLE}.HOST_OLEDB_PROVIDER ;;
  }

  dimension: host_password {
    type: string
    sql: ${TABLE}.HOST_PASSWORD ;;
  }

  dimension: host_port {
    type: string
    sql: ${TABLE}.HOST_PORT ;;
  }

  dimension: host_protocol {
    type: string
    sql: ${TABLE}.HOST_PROTOCOL ;;
  }

  dimension: host_region {
    type: string
    sql: ${TABLE}.HOST_REGION ;;
  }

  dimension: host_time_zone {
    type: string
    sql: ${TABLE}.HOST_TIME_ZONE ;;
  }

  dimension: host_type {
    type: string
    sql: ${TABLE}.HOST_TYPE ;;
  }

  dimension: host_username {
    type: string
    sql: ${TABLE}.HOST_USERNAME ;;
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
    drill_fields: [host_hostname, host_username]
  }
}
