view: m_source_system {
  sql_table_name: dbo.M_SOURCE_SYSTEM ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: api_host_id {
    type: number
    sql: ${TABLE}.API_HOST_ID ;;
  }

  dimension: api_retry_attempts {
    type: number
    sql: ${TABLE}.API_RETRY_ATTEMPTS ;;
  }

  dimension: archive_directory {
    type: string
    sql: ${TABLE}.ARCHIVE_DIRECTORY ;;
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

  dimension: data_ingestion_protocol {
    type: string
    sql: ${TABLE}.DATA_INGESTION_PROTOCOL ;;
  }

  dimension: file_size_pct_diff_threshold {
    type: number
    sql: ${TABLE}.FILE_SIZE_PCT_DIFF_THRESHOLD ;;
  }

  dimension: ftp_package_path {
    type: string
    sql: ${TABLE}.FTP_PACKAGE_PATH ;;
  }

  dimension: ftp_password {
    type: string
    sql: ${TABLE}.FTP_PASSWORD ;;
  }

  dimension: ftp_site {
    type: string
    sql: ${TABLE}.FTP_SITE ;;
  }

  dimension: ftp_user {
    type: string
    sql: ${TABLE}.FTP_USER ;;
  }

  dimension: ftps_flg {
    type: number
    sql: ${TABLE}.FTPS_FLG ;;
  }

  dimension: issue_directory {
    type: string
    sql: ${TABLE}.ISSUE_DIRECTORY ;;
  }

  dimension: log_file_directory {
    type: string
    sql: ${TABLE}.LOG_FILE_DIRECTORY ;;
  }

  dimension: max_concurrent_processes {
    type: number
    sql: ${TABLE}.MAX_CONCURRENT_PROCESSES ;;
  }

  dimension: max_ftp_connections {
    type: number
    sql: ${TABLE}.MAX_FTP_CONNECTIONS ;;
  }

  dimension: max_simultaneous_downloads_per_connection {
    type: number
    sql: ${TABLE}.MAX_SIMULTANEOUS_DOWNLOADS_PER_CONNECTION ;;
  }

  dimension: num_ftp_retry_attempts {
    type: number
    sql: ${TABLE}.NUM_FTP_RETRY_ATTEMPTS ;;
  }

  dimension: preprocess_directory {
    type: string
    sql: ${TABLE}.PREPROCESS_DIRECTORY ;;
  }

  dimension: receive_directory {
    type: string
    sql: ${TABLE}.RECEIVE_DIRECTORY ;;
  }

  dimension: remote_directory {
    type: string
    sql: ${TABLE}.REMOTE_DIRECTORY ;;
  }

  dimension: send_directory {
    type: string
    sql: ${TABLE}.SEND_DIRECTORY ;;
  }

  dimension: sftp_flg {
    type: number
    sql: ${TABLE}.SFTP_FLG ;;
  }

  dimension: source_system_time_between_scan_secs {
    type: number
    sql: ${TABLE}.SOURCE_SYSTEM_TIME_BETWEEN_SCAN_SECS ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: system_desc {
    type: string
    sql: ${TABLE}.SYSTEM_DESC ;;
  }

  dimension: system_nm {
    type: string
    sql: ${TABLE}.SYSTEM_NM ;;
  }

  dimension: system_type {
    type: string
    sql: ${TABLE}.SYSTEM_TYPE ;;
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

  dimension: work_directory {
    type: string
    sql: ${TABLE}.WORK_DIRECTORY ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
