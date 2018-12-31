view: vw_table_conformance_map {
  sql_table_name: dbo.VW_TABLE_CONFORMANCE_MAP ;;

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

  dimension: fq_lookup_table_name {
    type: string
    sql: ${TABLE}.FQ_LOOKUP_TABLE_NAME ;;
  }

  dimension: fq_source_table_name {
    type: string
    sql: ${TABLE}.FQ_SOURCE_TABLE_NAME ;;
  }

  dimension: fq_target_table_name {
    type: string
    sql: ${TABLE}.FQ_TARGET_TABLE_NAME ;;
  }

  dimension: lookup_column_name {
    type: string
    sql: ${TABLE}.LOOKUP_COLUMN_NAME ;;
  }

  dimension: lookup_db_type {
    type: string
    sql: ${TABLE}.LOOKUP_DB_TYPE ;;
  }

  dimension: lookup_table_dataset_id {
    type: number
    sql: ${TABLE}.LOOKUP_TABLE_DATASET_ID ;;
  }

  dimension: source_column_expression {
    type: string
    sql: ${TABLE}.SOURCE_COLUMN_EXPRESSION ;;
  }

  dimension: source_db_type {
    type: string
    sql: ${TABLE}.SOURCE_DB_TYPE ;;
  }

  dimension: source_table_dataset_id {
    type: number
    sql: ${TABLE}.SOURCE_TABLE_DATASET_ID ;;
  }

  dimension: table_conformance_map_id {
    type: number
    sql: ${TABLE}.TABLE_CONFORMANCE_MAP_ID ;;
  }

  dimension: target_column_name {
    type: string
    sql: ${TABLE}.TARGET_COLUMN_NAME ;;
  }

  dimension: target_db_type {
    type: string
    sql: ${TABLE}.TARGET_DB_TYPE ;;
  }

  dimension: target_table_dataset_id {
    type: number
    sql: ${TABLE}.TARGET_TABLE_DATASET_ID ;;
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

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [fq_source_table_name, fq_target_table_name, target_column_name, fq_lookup_table_name, lookup_column_name]
  }
}
