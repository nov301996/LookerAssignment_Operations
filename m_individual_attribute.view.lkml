view: m_individual_attribute {
  sql_table_name: dbo.M_INDIVIDUAL_ATTRIBUTE ;;

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: attribute_definition_sql {
    type: string
    sql: ${TABLE}.ATTRIBUTE_DEFINITION_SQL ;;
  }

  dimension: attribute_desc {
    type: string
    sql: ${TABLE}.ATTRIBUTE_DESC ;;
  }

  dimension: attribute_name {
    type: string
    sql: ${TABLE}.ATTRIBUTE_NAME ;;
  }

  dimension: attribute_value_datatype_id {
    type: number
    sql: ${TABLE}.ATTRIBUTE_VALUE_DATATYPE_ID ;;
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

  dimension: individual_attribute_id {
    type: number
    sql: ${TABLE}.INDIVIDUAL_ATTRIBUTE_ID ;;
  }

  dimension: input_dataset_ids {
    type: string
    sql: ${TABLE}.INPUT_DATASET_IDS ;;
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
    drill_fields: [attribute_name]
  }
}
