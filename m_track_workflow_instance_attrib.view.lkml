view: m_track_workflow_instance_attrib {
  sql_table_name: dbo.M_TRACK_WORKFLOW_INSTANCE_ATTRIB ;;

  dimension: attrib_name {
    type: string
    sql: ${TABLE}.ATTRIB_NAME ;;
  }

  dimension: attrib_value {
    type: string
    sql: ${TABLE}.ATTRIB_VALUE ;;
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

  dimension: workflow_attrib_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ATTRIB_ID ;;
  }

  dimension: workflow_instance_id {
    type: number
    sql: ${TABLE}.WORKFLOW_INSTANCE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [attrib_name]
  }
}
