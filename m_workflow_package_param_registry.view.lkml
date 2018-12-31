view: m_workflow_package_param_registry {
  sql_table_name: dbo.M_WORKFLOW_PACKAGE_PARAM_REGISTRY ;;

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

  dimension: workflow_package_name {
    type: string
    sql: ${TABLE}.WORKFLOW_PACKAGE_NAME ;;
  }

  dimension: workflow_package_param_desc {
    type: string
    sql: ${TABLE}.WORKFLOW_PACKAGE_PARAM_DESC ;;
  }

  dimension: workflow_package_param_name {
    type: string
    sql: ${TABLE}.WORKFLOW_PACKAGE_PARAM_NAME ;;
  }

  dimension: workflow_package_param_registry_id {
    type: number
    sql: ${TABLE}.WORKFLOW_PACKAGE_PARAM_REGISTRY_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [workflow_package_name, workflow_package_param_name]
  }
}
