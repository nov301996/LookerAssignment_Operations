view: m_activation_channel_map {
  sql_table_name: dbo.M_ACTIVATION_CHANNEL_MAP ;;

  dimension: activation_channel_id {
    type: number
    sql: ${TABLE}.ACTIVATION_CHANNEL_ID ;;
  }

  dimension: activation_channel_map_id {
    type: number
    sql: ${TABLE}.ACTIVATION_CHANNEL_MAP_ID ;;
  }

  dimension: active_flg {
    type: string
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

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: extract_dataset_id {
    type: number
    sql: ${TABLE}.EXTRACT_DATASET_ID ;;
  }

  dimension: extract_entity_id {
    type: number
    sql: ${TABLE}.EXTRACT_ENTITY_ID ;;
  }

  dimension: extract_workflow_id {
    type: number
    sql: ${TABLE}.EXTRACT_WORKFLOW_ID ;;
  }

  dimension: host_id {
    type: number
    sql: ${TABLE}.HOST_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: pruning_dataset_id {
    type: number
    sql: ${TABLE}.PRUNING_DATASET_ID ;;
  }

  dimension: pruning_workflow_id {
    type: number
    sql: ${TABLE}.PRUNING_WORKFLOW_ID ;;
  }

  dimension: source_system_id {
    type: number
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: transfer_dataset_id {
    type: number
    sql: ${TABLE}.TRANSFER_DATASET_ID ;;
  }

  dimension: transfer_workflow_id {
    type: number
    sql: ${TABLE}.TRANSFER_WORKFLOW_ID ;;
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
    drill_fields: [name]
  }
}
