view: m_source_entity {
  sql_table_name: dbo.M_SOURCE_ENTITY ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: allow_string_truncation {
    type: number
    sql: ${TABLE}.ALLOW_STRING_TRUNCATION ;;
  }

  dimension: column_delim_escape_char {
    type: string
    sql: ${TABLE}.COLUMN_DELIM_ESCAPE_CHAR ;;
  }

  dimension: column_delimiter {
    type: string
    sql: ${TABLE}.COLUMN_DELIMITER ;;
  }

  dimension: control_file_delimiter {
    type: string
    sql: ${TABLE}.CONTROL_FILE_DELIMITER ;;
  }

  dimension: control_file_ext {
    type: string
    sql: ${TABLE}.CONTROL_FILE_EXT ;;
  }

  dimension: control_file_flg {
    type: number
    sql: ${TABLE}.CONTROL_FILE_FLG ;;
  }

  dimension: control_file_mask {
    type: string
    sql: ${TABLE}.CONTROL_FILE_MASK ;;
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

  dimension: database_host {
    type: string
    sql: ${TABLE}.DATABASE_HOST ;;
  }

  dimension: database_nm {
    type: string
    sql: ${TABLE}.DATABASE_NM ;;
  }

  dimension: database_password {
    type: string
    sql: ${TABLE}.DATABASE_PASSWORD ;;
  }

  dimension: database_username {
    type: string
    sql: ${TABLE}.DATABASE_USERNAME ;;
  }

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: delete_source_file_flg {
    type: number
    sql: ${TABLE}.DELETE_SOURCE_FILE_FLG ;;
  }

  dimension: download_only_flg {
    type: number
    sql: ${TABLE}.DOWNLOAD_ONLY_FLG ;;
  }

  dimension: entity_desc {
    type: string
    sql: ${TABLE}.ENTITY_DESC ;;
  }

  dimension: entity_nm {
    type: string
    sql: ${TABLE}.ENTITY_NM ;;
  }

  dimension: file_format_id {
    type: number
    sql: ${TABLE}.FILE_FORMAT_ID ;;
  }

  dimension: frequency {
    type: string
    sql: ${TABLE}.FREQUENCY ;;
  }

  dimension: frequency_days {
    type: number
    sql: ${TABLE}.FREQUENCY_DAYS ;;
  }

  dimension: header_exclude_expression {
    type: string
    sql: ${TABLE}.HEADER_EXCLUDE_EXPRESSION ;;
  }

  dimension: include_header {
    type: number
    sql: ${TABLE}.INCLUDE_HEADER ;;
  }

  dimension: match_config_id {
    type: number
    sql: ${TABLE}.MATCH_CONFIG_ID ;;
  }

  dimension: next_extract_value {
    type: string
    sql: ${TABLE}.NEXT_EXTRACT_VALUE ;;
  }

  dimension: num_header_rows {
    type: number
    sql: ${TABLE}.NUM_HEADER_ROWS ;;
  }

  dimension: parent_source_entity_id {
    type: number
    sql: ${TABLE}.PARENT_SOURCE_ENTITY_ID ;;
  }

  dimension: pre_process_function {
    type: string
    sql: ${TABLE}.PRE_PROCESS_FUNCTION ;;
  }

  dimension: required_date_diff {
    type: number
    sql: ${TABLE}.REQUIRED_DATE_DIFF ;;
  }

  dimension: required_flg {
    type: number
    sql: ${TABLE}.REQUIRED_FLG ;;
  }

  dimension: row_delim_escape_char {
    type: string
    sql: ${TABLE}.ROW_DELIM_ESCAPE_CHAR ;;
  }

  dimension: row_delimiter {
    type: string
    sql: ${TABLE}.ROW_DELIMITER ;;
  }

  dimension: source_file_mask {
    type: string
    sql: ${TABLE}.SOURCE_FILE_MASK ;;
  }

  dimension: source_lineage_dt_funct {
    type: string
    sql: ${TABLE}.SOURCE_LINEAGE_DT_FUNCT ;;
  }

  dimension: source_uow_id_funct {
    type: string
    sql: ${TABLE}.SOURCE_UOW_ID_FUNCT ;;
  }

  dimension: stage_package_path {
    type: string
    sql: ${TABLE}.STAGE_PACKAGE_PATH ;;
  }

  dimension: stage_strategy {
    type: string
    sql: ${TABLE}.STAGE_STRATEGY ;;
  }

  dimension: stage_table_nm {
    type: string
    sql: ${TABLE}.STAGE_TABLE_NM ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: std_config_id {
    type: number
    sql: ${TABLE}.STD_CONFIG_ID ;;
  }

  dimension: system_id {
    type: number
    sql: ${TABLE}.SYSTEM_ID ;;
  }

  dimension: text_qualifier {
    type: string
    sql: ${TABLE}.TEXT_QUALIFIER ;;
  }

  dimension: unzip_file_flg {
    type: number
    sql: ${TABLE}.UNZIP_FILE_FLG ;;
  }

  dimension: unzip_file_password {
    type: string
    sql: ${TABLE}.UNZIP_FILE_PASSWORD ;;
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
    drill_fields: [id, database_username]
  }
}
