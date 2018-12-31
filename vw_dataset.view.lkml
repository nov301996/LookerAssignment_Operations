view: vw_dataset {
  sql_table_name: dbo.VW_DATASET ;;

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

  dimension: dataset_classification_desc {
    type: string
    sql: ${TABLE}.DATASET_CLASSIFICATION_DESC ;;
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

  dimension: fq_object_name {
    type: string
    sql: ${TABLE}.FQ_OBJECT_NAME ;;
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

  dimension: host_id {
    type: number
    sql: ${TABLE}.HOST_ID ;;
  }

  dimension: object_name {
    type: string
    sql: ${TABLE}.OBJECT_NAME ;;
  }

  dimension: object_type {
    type: string
    sql: ${TABLE}.OBJECT_TYPE ;;
  }

  dimension: partition_columns {
    type: string
    sql: ${TABLE}.PARTITION_COLUMNS ;;
  }

  dimension: primary_key_columns {
    type: string
    sql: ${TABLE}.PRIMARY_KEY_COLUMNS ;;
  }

  dimension: relative_object_description {
    type: string
    sql: ${TABLE}.RELATIVE_OBJECT_DESCRIPTION ;;
  }

  dimension: system_nm {
    type: string
    sql: ${TABLE}.SYSTEM_NM ;;
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
    drill_fields: [dataset_name, object_name, fq_object_name]
  }
}
