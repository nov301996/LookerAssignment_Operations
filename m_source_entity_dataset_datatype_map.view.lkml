view: m_source_entity_dataset_datatype_map {
  sql_table_name: dbo.M_SOURCE_ENTITY_DATASET_DATATYPE_MAP ;;

  dimension: column_position {
    type: number
    sql: ${TABLE}.COLUMN_POSITION ;;
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

  dimension: dataset_datatype_map_id {
    type: number
    sql: ${TABLE}.DATASET_DATATYPE_MAP_ID ;;
  }

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: datatype_id {
    type: number
    sql: ${TABLE}.DATATYPE_ID ;;
  }

  dimension: key_field_flg {
    type: string
    sql: ${TABLE}.KEY_FIELD_FLG ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.LENGTH ;;
  }

  dimension: scale {
    type: number
    sql: ${TABLE}.SCALE ;;
  }

  dimension: source_attribute_name {
    type: string
    sql: ${TABLE}.SOURCE_ATTRIBUTE_NAME ;;
  }

  dimension: stage_column_name {
    type: string
    sql: ${TABLE}.STAGE_COLUMN_NAME ;;
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
    drill_fields: [source_attribute_name, stage_column_name]
  }
}
