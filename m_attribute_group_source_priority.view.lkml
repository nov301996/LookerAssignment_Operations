view: m_attribute_group_source_priority {
  sql_table_name: dbo.M_ATTRIBUTE_GROUP_SOURCE_PRIORITY ;;

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: attribute_group_source_priority_id {
    type: number
    sql: ${TABLE}.ATTRIBUTE_GROUP_SOURCE_PRIORITY_ID ;;
  }

  dimension: attribute_group_survivorship_id {
    type: number
    sql: ${TABLE}.ATTRIBUTE_GROUP_SURVIVORSHIP_ID ;;
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

  dimension: source_entity_id {
    type: number
    sql: ${TABLE}.SOURCE_ENTITY_ID ;;
  }

  dimension: source_priority_num {
    type: number
    sql: ${TABLE}.SOURCE_PRIORITY_NUM ;;
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
    drill_fields: []
  }
}
