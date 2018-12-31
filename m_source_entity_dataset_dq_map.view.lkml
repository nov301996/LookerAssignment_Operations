view: m_source_entity_dataset_dq_map {
  sql_table_name: dbo.M_SOURCE_ENTITY_DATASET_DQ_MAP ;;

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

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: source_entity_dataset_dq_map_id {
    type: number
    sql: ${TABLE}.SOURCE_ENTITY_DATASET_DQ_MAP_ID ;;
  }

  dimension: src_entity_id {
    type: number
    sql: ${TABLE}.SRC_ENTITY_ID ;;
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

  dimension: workflow_package_map_id {
    type: number
    sql: ${TABLE}.WORKFLOW_PACKAGE_MAP_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
