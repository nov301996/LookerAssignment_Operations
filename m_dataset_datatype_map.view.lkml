view: m_dataset_datatype_map {
  sql_table_name: dbo.M_DATASET_DATATYPE_MAP ;;

  dimension: column_name {
    type: string
    sql: ${TABLE}.COLUMN_NAME ;;
  }

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

  dimension: length {
    type: number
    sql: ${TABLE}.LENGTH ;;
  }

  dimension: partition_key_flg {
    type: string
    sql: ${TABLE}.PARTITION_KEY_FLG ;;
  }

  dimension: primary_key_flg {
    type: string
    sql: ${TABLE}.PRIMARY_KEY_FLG ;;
  }

  dimension: scale {
    type: number
    sql: ${TABLE}.SCALE ;;
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
    drill_fields: [column_name]
  }
}
