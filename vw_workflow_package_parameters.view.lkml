view: vw_workflow_package_parameters {
  sql_table_name: dbo.VW_WORKFLOW_PACKAGE_PARAMETERS ;;

  dimension: client_id {
    type: number
    sql: ${TABLE}.CLIENT_ID ;;
  }

  dimension: client_nm {
    type: string
    sql: ${TABLE}.CLIENT_NM ;;
  }

  dimension: dispatch_condition {
    type: string
    sql: ${TABLE}.DISPATCH_CONDITION ;;
  }

  dimension: input_fq_dataset_object_names {
    type: string
    sql: ${TABLE}.INPUT_FQ_DATASET_OBJECT_NAMES ;;
  }

  dimension: output_fq_dataset_object_names {
    type: string
    sql: ${TABLE}.OUTPUT_FQ_DATASET_OBJECT_NAMES ;;
  }

  dimension: param_fq_dataset_object_name {
    type: string
    sql: ${TABLE}.PARAM_FQ_DATASET_OBJECT_NAME ;;
  }

  dimension: param_name {
    type: string
    sql: ${TABLE}.PARAM_NAME ;;
  }

  dimension: param_value {
    type: string
    sql: ${TABLE}.PARAM_VALUE ;;
  }

  dimension: workflow_active_flg {
    type: number
    sql: ${TABLE}.WORKFLOW_ACTIVE_FLG ;;
  }

  dimension: workflow_execution_subsystem_id {
    type: number
    sql: ${TABLE}.WORKFLOW_EXECUTION_SUBSYSTEM_ID ;;
  }

  dimension: workflow_execution_subsystem_name {
    type: string
    sql: ${TABLE}.WORKFLOW_EXECUTION_SUBSYSTEM_NAME ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  dimension: workflow_name {
    type: string
    sql: ${TABLE}.WORKFLOW_NAME ;;
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

  dimension: workflow_package_map_id {
    type: number
    sql: ${TABLE}.WORKFLOW_PACKAGE_MAP_ID ;;
  }

  dimension: workflow_package_name {
    type: string
    sql: ${TABLE}.WORKFLOW_PACKAGE_NAME ;;
  }

  dimension: workflow_package_param_id {
    type: number
    sql: ${TABLE}.WORKFLOW_PACKAGE_PARAM_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [workflow_name, workflow_execution_subsystem_name, workflow_package_name, param_name, param_fq_dataset_object_name]
  }
}
