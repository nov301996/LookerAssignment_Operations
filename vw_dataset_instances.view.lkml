view: vw_dataset_instances {
  sql_table_name: dbo.VW_DATASET_INSTANCES ;;

  dimension: dataset_active_flg {
    type: number
    sql: ${TABLE}.DATASET_ACTIVE_FLG ;;
  }

  dimension: dataset_client_id {
    type: number
    sql: ${TABLE}.DATASET_CLIENT_ID ;;
  }

  dimension: dataset_data_classification_id {
    type: number
    sql: ${TABLE}.DATASET_DATA_CLASSIFICATION_ID ;;
  }

  dimension: dataset_data_columns {
    type: string
    sql: ${TABLE}.DATASET_DATA_COLUMNS ;;
  }

  dimension: dataset_desc {
    type: string
    sql: ${TABLE}.DATASET_DESC ;;
  }

  dimension: dataset_expiration_condition {
    type: string
    sql: ${TABLE}.DATASET_EXPIRATION_CONDITION ;;
  }

  dimension: dataset_fq_object_name {
    type: string
    sql: ${TABLE}.DATASET_FQ_OBJECT_NAME ;;
  }

  dimension: dataset_host_connection_type {
    type: string
    sql: ${TABLE}.DATASET_HOST_CONNECTION_TYPE ;;
  }

  dimension: dataset_host_id {
    type: number
    sql: ${TABLE}.DATASET_HOST_ID ;;
  }

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: dataset_instance_id {
    type: number
    sql: ${TABLE}.DATASET_INSTANCE_ID ;;
  }

  dimension: dataset_instance_object_uri {
    type: string
    sql: ${TABLE}.DATASET_INSTANCE_OBJECT_URI ;;
  }

  dimension: dataset_instance_status {
    type: string
    sql: ${TABLE}.DATASET_INSTANCE_STATUS ;;
  }

  dimension: dataset_instance_status_id {
    type: number
    sql: ${TABLE}.DATASET_INSTANCE_STATUS_ID ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}.DATASET_NAME ;;
  }

  dimension: dataset_object_name {
    type: string
    sql: ${TABLE}.DATASET_OBJECT_NAME ;;
  }

  dimension: dataset_object_type {
    type: string
    sql: ${TABLE}.DATASET_OBJECT_TYPE ;;
  }

  dimension: dataset_primary_key_columns {
    type: string
    sql: ${TABLE}.DATASET_PRIMARY_KEY_COLUMNS ;;
  }

  measure: count {
    type: count
    drill_fields: [dataset_name, dataset_object_name, dataset_fq_object_name]
  }
}
