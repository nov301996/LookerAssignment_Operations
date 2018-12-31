view: m_dependency_type {
  sql_table_name: dbo.M_DEPENDENCY_TYPE ;;

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

  dimension: dependency_dataset_instance_attrib_name {
    type: string
    sql: ${TABLE}.DEPENDENCY_DATASET_INSTANCE_ATTRIB_NAME ;;
  }

  dimension: dependency_dataset_instance_statuses {
    type: string
    sql: ${TABLE}.DEPENDENCY_DATASET_INSTANCE_STATUSES ;;
  }

  dimension: dependency_function {
    type: string
    sql: ${TABLE}.DEPENDENCY_FUNCTION ;;
  }

  dimension: dependency_type {
    type: string
    sql: ${TABLE}.DEPENDENCY_TYPE ;;
  }

  dimension: dependency_type_desc {
    type: string
    sql: ${TABLE}.DEPENDENCY_TYPE_DESC ;;
  }

  dimension: dependency_type_id {
    type: number
    sql: ${TABLE}.DEPENDENCY_TYPE_ID ;;
  }

  dimension: dependency_workflow_instance_statuses {
    type: string
    sql: ${TABLE}.DEPENDENCY_WORKFLOW_INSTANCE_STATUSES ;;
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
    drill_fields: [dependency_dataset_instance_attrib_name]
  }
}
