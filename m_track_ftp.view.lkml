view: m_track_ftp {
  sql_table_name: dbo.M_TRACK_FTP ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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

  dimension: file_nm {
    type: string
    sql: ${TABLE}.FILE_NM ;;
  }

  dimension: file_nm_without_ext {
    type: string
    sql: ${TABLE}.FILE_NM_WITHOUT_EXT ;;
  }

  dimension: file_processing_lock_flg {
    type: string
    sql: ${TABLE}.FILE_PROCESSING_LOCK_FLG ;;
  }

  dimension: file_size_bytes {
    type: number
    sql: ${TABLE}.FILE_SIZE_BYTES ;;
  }

  dimension_group: ftp_available_dt {
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
    sql: ${TABLE}.FTP_AVAILABLE_DT ;;
  }

  dimension_group: ftp_retrieved_dt {
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
    sql: ${TABLE}.FTP_RETRIEVED_DT ;;
  }

  dimension: full_ftp_file_nm {
    type: string
    sql: ${TABLE}.FULL_FTP_FILE_NM ;;
  }

  dimension: parent_ftp_id {
    type: number
    sql: ${TABLE}.PARENT_FTP_ID ;;
  }

  dimension: pct_downloaded {
    type: number
    sql: ${TABLE}.PCT_DOWNLOADED ;;
  }

  dimension: receipt_lock_flg {
    type: string
    sql: ${TABLE}.RECEIPT_LOCK_FLG ;;
  }

  dimension: source_entity_id {
    type: number
    sql: ${TABLE}.SOURCE_ENTITY_ID ;;
  }

  dimension: source_system_id {
    type: number
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
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

  dimension: valid_file_ind {
    type: string
    sql: ${TABLE}.VALID_FILE_IND ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
