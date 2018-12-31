view: m_workflow_dispatch_input {
  sql_table_name: dbo.M_WORKFLOW_DISPATCH_INPUT ;;

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

  dimension: input_dataset_instance_limit {
    type: number
    sql: ${TABLE}.INPUT_DATASET_INSTANCE_LIMIT ;;
  }

  dimension: input_dataset_instance_types {
    type: string
    sql: ${TABLE}.INPUT_DATASET_INSTANCE_TYPES ;;
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

  dimension: workflow_dispatch_input_id {
    type: number
    sql: ${TABLE}.WORKFLOW_DISPATCH_INPUT_ID ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
