view: m_workflow_input {
  sql_table_name: dbo.M_WORKFLOW_INPUT ;;

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

  dimension: data_type {
    type: string
    sql: ${TABLE}.DATA_TYPE ;;
  }

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: dataset_pass_by {
    type: string
    sql: ${TABLE}.DATASET_PASS_BY ;;
  }

  dimension: dataset_scope {
    type: string
    sql: ${TABLE}.DATASET_SCOPE ;;
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

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  dimension: workflow_input_id {
    type: number
    sql: ${TABLE}.WORKFLOW_INPUT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
