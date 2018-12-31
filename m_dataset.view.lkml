view: m_dataset {
  sql_table_name: dbo.M_DATASET ;;

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
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

  dimension: data_classification_id {
    type: number
    sql: ${TABLE}.DATA_CLASSIFICATION_ID ;;
  }

  dimension: data_columns {
    type: string
    sql: ${TABLE}.DATA_COLUMNS ;;
  }

  dimension: dataset_desc {
    type: string
    sql: ${TABLE}.DATASET_DESC ;;
  }

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}.DATASET_NAME ;;
  }

  dimension: dataset_query_sql {
    type: string
    sql: ${TABLE}.DATASET_QUERY_SQL ;;
  }

  dimension: entity_type_id {
    type: number
    sql: ${TABLE}.ENTITY_TYPE_ID ;;
  }

  dimension: expiration_condition {
    type: string
    sql: ${TABLE}.EXPIRATION_CONDITION ;;
  }

  dimension: expiration_status_id {
    type: number
    sql: ${TABLE}.EXPIRATION_STATUS_ID ;;
  }

  dimension: host_id {
    type: number
    sql: ${TABLE}.HOST_ID ;;
  }

  dimension: materialized_flg {
    type: string
    sql: ${TABLE}.MATERIALIZED_FLG ;;
  }

  dimension: object_name {
    type: string
    sql: ${TABLE}.OBJECT_NAME ;;
  }

  dimension: object_schema {
    type: string
    sql: ${TABLE}.OBJECT_SCHEMA ;;
  }

  dimension: object_type {
    type: string
    sql: ${TABLE}.OBJECT_TYPE ;;
  }

  dimension: parent_dataset_id {
    type: number
    sql: ${TABLE}.PARENT_DATASET_ID ;;
  }

  dimension: partition_columns {
    type: string
    sql: ${TABLE}.PARTITION_COLUMNS ;;
  }

  dimension: primary_key_columns {
    type: string
    sql: ${TABLE}.PRIMARY_KEY_COLUMNS ;;
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
    drill_fields: [dataset_name, object_name]
  }
}
