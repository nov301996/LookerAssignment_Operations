view: m_workflow_instance_global_properties {
  sql_table_name: dbo.M_WORKFLOW_INSTANCE_GLOBAL_PROPERTIES ;;

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

  dimension: global_property_name {
    type: string
    sql: ${TABLE}.GLOBAL_PROPERTY_NAME ;;
  }

  dimension: global_property_value {
    type: string
    sql: ${TABLE}.GLOBAL_PROPERTY_VALUE ;;
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

  dimension: workflow_instance_id {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [global_property_name]
  }
}
