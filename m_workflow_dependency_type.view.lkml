view: m_workflow_dependency_type {
  sql_table_name: dbo.M_WORKFLOW_DEPENDENCY_TYPE ;;

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

  dimension: workflow_dependency_dataset_instance_attrib_name {
    type: string
    sql: ${TABLE}.WORKFLOW_DEPENDENCY_DATASET_INSTANCE_ATTRIB_NAME ;;
  }

  dimension: workflow_dependency_dataset_instance_status {
    type: string
    sql: ${TABLE}.WORKFLOW_DEPENDENCY_DATASET_INSTANCE_STATUS ;;
  }

  dimension: workflow_dependency_funct {
    type: string
    sql: ${TABLE}.WORKFLOW_DEPENDENCY_FUNCT ;;
  }

  dimension: workflow_dependency_type_friendly_name {
    type: string
    sql: ${TABLE}.WORKFLOW_DEPENDENCY_TYPE_FRIENDLY_NAME ;;
  }

  dimension: workflow_dependency_type_id {
    type: number
    sql: ${TABLE}.WORKFLOW_DEPENDENCY_TYPE_ID ;;
  }

  dimension: workflow_dependency_workflow_instance_status {
    type: string
    sql: ${TABLE}.WORKFLOW_DEPENDENCY_WORKFLOW_INSTANCE_STATUS ;;
  }

  measure: count {
    type: count
    drill_fields: [workflow_dependency_dataset_instance_attrib_name, workflow_dependency_type_friendly_name]
  }
}
