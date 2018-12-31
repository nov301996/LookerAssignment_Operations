view: m_runtime_param_registry {
  sql_table_name: dbo.M_RUNTIME_PARAM_REGISTRY ;;

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

  dimension: param_description {
    type: string
    sql: ${TABLE}.PARAM_DESCRIPTION ;;
  }

  dimension: param_name {
    type: string
    sql: ${TABLE}.PARAM_NAME ;;
  }

  dimension: param_registry_id {
    type: number
    sql: ${TABLE}.PARAM_REGISTRY_ID ;;
  }

  dimension: param_value {
    type: string
    sql: ${TABLE}.PARAM_VALUE ;;
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
    drill_fields: [param_name]
  }
}
