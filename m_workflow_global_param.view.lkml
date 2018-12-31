view: m_workflow_global_param {
  sql_table_name: dbo.M_WORKFLOW_GLOBAL_PARAM ;;

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

  dimension: param_data_type {
    type: string
    sql: ${TABLE}.PARAM_DATA_TYPE ;;
  }

  dimension: param_name {
    type: string
    sql: ${TABLE}.PARAM_NAME ;;
  }

  dimension: param_type_id {
    type: number
    sql: ${TABLE}.PARAM_TYPE_ID ;;
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

  dimension: workflow_global_param_id {
    type: number
    sql: ${TABLE}.WORKFLOW_GLOBAL_PARAM_ID ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [param_name]
  }
}
