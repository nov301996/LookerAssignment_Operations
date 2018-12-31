view: vw_data_entities {
  sql_table_name: dbo.VW_DATA_ENTITIES ;;

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.CLIENT_ID ;;
  }

  dimension: column_delimiter {
    type: string
    sql: ${TABLE}.COLUMN_DELIMITER ;;
  }

  dimension: connection_type {
    type: string
    sql: ${TABLE}.CONNECTION_TYPE ;;
  }

  dimension: entity_desc {
    type: string
    sql: ${TABLE}.ENTITY_DESC ;;
  }

  dimension: entity_nm {
    type: string
    sql: ${TABLE}.ENTITY_NM ;;
  }

  dimension: escape_char {
    type: string
    sql: ${TABLE}.ESCAPE_CHAR ;;
  }

  dimension: external_host_id {
    type: number
    sql: ${TABLE}.EXTERNAL_HOST_ID ;;
  }

  dimension: file_dataset_id {
    type: number
    sql: ${TABLE}.FILE_DATASET_ID ;;
  }

  dimension: has_header_row {
    type: number
    sql: ${TABLE}.HAS_HEADER_ROW ;;
  }

  dimension: header_expression {
    type: string
    sql: ${TABLE}.HEADER_EXPRESSION ;;
  }

  dimension: internal_host {
    type: string
    sql: ${TABLE}.INTERNAL_HOST ;;
  }

  dimension: internal_host_id {
    type: number
    sql: ${TABLE}.INTERNAL_HOST_ID ;;
  }

  dimension: last_load_count {
    type: number
    sql: ${TABLE}.LAST_LOAD_COUNT ;;
  }

  dimension_group: last_load {
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
    sql: ${TABLE}.LAST_LOAD_TIME ;;
  }

  dimension: row_delimiter {
    type: string
    sql: ${TABLE}.ROW_DELIMITER ;;
  }

  dimension: source_entity_id {
    type: number
    sql: ${TABLE}.SOURCE_ENTITY_ID ;;
  }

  dimension: source_file_mask {
    type: string
    sql: ${TABLE}.SOURCE_FILE_MASK ;;
  }

  dimension: source_system_id {
    type: number
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: stage_table_dataset_id {
    type: number
    sql: ${TABLE}.STAGE_TABLE_DATASET_ID ;;
  }

  dimension: stage_table_name {
    type: string
    sql: ${TABLE}.STAGE_TABLE_NAME ;;
  }

  dimension: text_qualifier {
    type: string
    sql: ${TABLE}.TEXT_QUALIFIER ;;
  }

  measure: count {
    type: count
    drill_fields: [stage_table_name]
  }
}
