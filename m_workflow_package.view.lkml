view: m_workflow_package {
  sql_table_name: dbo.M_WORKFLOW_PACKAGE ;;

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

  dimension: runtime_environment_id {
    type: number
    sql: ${TABLE}.RUNTIME_ENVIRONMENT_ID ;;
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

  dimension: workflow_execution_subsystem_id {
    type: number
    sql: ${TABLE}.WORKFLOW_EXECUTION_SUBSYSTEM_ID ;;
  }

  dimension: workflow_package_classname {
    type: string
    sql: ${TABLE}.WORKFLOW_PACKAGE_CLASSNAME ;;
  }

  dimension: workflow_package_desc {
    type: string
    sql: ${TABLE}.WORKFLOW_PACKAGE_DESC ;;
  }

  dimension: workflow_package_dynamic_params_funct {
    type: string
    sql: ${TABLE}.WORKFLOW_PACKAGE_DYNAMIC_PARAMS_FUNCT ;;
  }

  dimension: workflow_package_executable_file_paths {
    type: string
    sql: ${TABLE}.WORKFLOW_PACKAGE_EXECUTABLE_FILE_PATHS ;;
  }

  dimension: workflow_package_id {
    type: number
    sql: ${TABLE}.WORKFLOW_PACKAGE_ID ;;
  }

  dimension: workflow_package_name {
    type: string
    sql: ${TABLE}.WORKFLOW_PACKAGE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [workflow_package_name, workflow_package_classname]
  }
}
