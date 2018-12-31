view: m_source_entity_api_attribute {
  sql_table_name: dbo.M_SOURCE_ENTITY_API_ATTRIBUTE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: array_flg {
    type: string
    sql: ${TABLE}.ARRAY_FLG ;;
  }

  dimension: attribute_display_nm {
    type: string
    sql: ${TABLE}.ATTRIBUTE_DISPLAY_NM ;;
  }

  dimension: attribute_nm {
    type: string
    sql: ${TABLE}.ATTRIBUTE_NM ;;
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

  dimension: data_length {
    type: number
    sql: ${TABLE}.DATA_LENGTH ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.DATA_TYPE ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ORDINAL_POSITION ;;
  }

  dimension: source_entity_id {
    type: number
    sql: ${TABLE}.SOURCE_ENTITY_ID ;;
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
    drill_fields: [id]
  }
}
