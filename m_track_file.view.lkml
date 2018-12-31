view: m_track_file {
  sql_table_name: dbo.M_TRACK_FILE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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

  dimension: dataset_instance_id {
    type: number
    sql: ${TABLE}.DATASET_INSTANCE_ID ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.ENTITY_ID ;;
  }

  dimension: file_nm {
    type: string
    sql: ${TABLE}.FILE_NM ;;
  }

  dimension: file_size_bytes {
    type: number
    sql: ${TABLE}.FILE_SIZE_BYTES ;;
  }

  dimension: ftp_id {
    type: number
    sql: ${TABLE}.FTP_ID ;;
  }

  dimension: outlier_bypass_flg {
    type: number
    sql: ${TABLE}.OUTLIER_BYPASS_FLG ;;
  }

  dimension_group: receive_dt {
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
    sql: ${TABLE}.RECEIVE_DT ;;
  }

  dimension: source_cnt {
    type: number
    sql: ${TABLE}.SOURCE_CNT ;;
  }

  dimension_group: source_dt {
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
    sql: ${TABLE}.SOURCE_DT ;;
  }

  dimension_group: stage_dt {
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
    sql: ${TABLE}.STAGE_DT ;;
  }

  dimension: stage_id {
    type: number
    sql: ${TABLE}.STAGE_ID ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
