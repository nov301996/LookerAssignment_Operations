view: m_workflow_package_map {
  sql_table_name: dbo.M_WORKFLOW_PACKAGE_MAP ;;

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

  dimension: root_workflow_flg {
    type: number
    sql: ${TABLE}.ROOT_WORKFLOW_FLG ;;
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

  dimension: workflow_package_id {
    type: number
    sql: ${TABLE}.WORKFLOW_PACKAGE_ID ;;
  }

  dimension: workflow_package_map_id {
    type: number
    sql: ${TABLE}.WORKFLOW_PACKAGE_MAP_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
