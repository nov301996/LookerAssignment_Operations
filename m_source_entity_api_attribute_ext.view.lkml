view: m_source_entity_api_attribute_ext {
  sql_table_name: dbo.M_SOURCE_ENTITY_API_ATTRIBUTE_EXT ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

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

  dimension: extnd_property_display_nm {
    type: string
    sql: ${TABLE}.EXTND_PROPERTY_DISPLAY_NM ;;
  }

  dimension: extnd_property_nm {
    type: string
    sql: ${TABLE}.EXTND_PROPERTY_NM ;;
  }

  dimension: normalized_flag {
    type: string
    sql: ${TABLE}.NORMALIZED_FLAG ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ORDINAL_POSITION ;;
  }

  dimension: source_entity_attribute_id {
    type: number
    sql: ${TABLE}.SOURCE_ENTITY_ATTRIBUTE_ID ;;
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
