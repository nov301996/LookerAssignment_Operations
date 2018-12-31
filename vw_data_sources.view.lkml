view: vw_data_sources {
  sql_table_name: dbo.VW_DATA_SOURCES ;;

  dimension: access_key {
    type: string
    sql: ${TABLE}.ACCESS_KEY ;;
  }

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: auth_token {
    type: string
    sql: ${TABLE}.AUTH_TOKEN ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.CLIENT_ID ;;
  }

  dimension: connection_type {
    type: string
    sql: ${TABLE}.CONNECTION_TYPE ;;
  }

  dimension: host_id {
    type: number
    sql: ${TABLE}.HOST_ID ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.LOCATION ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.PASSWORD ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: secret_key {
    type: string
    sql: ${TABLE}.SECRET_KEY ;;
  }

  dimension: source_system_desc {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_DESC ;;
  }

  dimension: source_system_id {
    type: number
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: source_system_name {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_NAME ;;
  }

  dimension: sub_directory {
    type: string
    sql: ${TABLE}.SUB_DIRECTORY ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}.TIME_ZONE ;;
  }

  dimension: update_frequency {
    type: number
    sql: ${TABLE}.UPDATE_FREQUENCY ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.USERNAME ;;
  }

  measure: count {
    type: count
    drill_fields: [source_system_name, username]
  }
}
