view: m_workflow_type {
  sql_table_name: dbo.M_WORKFLOW_TYPE ;;

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

  dimension: default_dispatch_condition {
    type: string
    sql: ${TABLE}.DEFAULT_DISPATCH_CONDITION ;;
  }

  dimension: default_input_dataset_instance_limit {
    type: string
    sql: ${TABLE}.DEFAULT_INPUT_DATASET_INSTANCE_LIMIT ;;
  }

  dimension: default_input_dataset_instance_types {
    type: string
    sql: ${TABLE}.DEFAULT_INPUT_DATASET_INSTANCE_TYPES ;;
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

  dimension: workflow_type {
    type: string
    sql: ${TABLE}.WORKFLOW_TYPE ;;
  }

  dimension: workflow_type_desc {
    type: string
    sql: ${TABLE}.WORKFLOW_TYPE_DESC ;;
  }

  dimension: workflow_type_id {
    type: number
    sql: ${TABLE}.WORKFLOW_TYPE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
