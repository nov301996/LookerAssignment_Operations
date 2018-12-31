view: m_track_dataset_instance_attrib {
  sql_table_name: dbo.M_TRACK_DATASET_INSTANCE_ATTRIB ;;

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

  dimension: dataset_attrib_id {
    type: number
    sql: ${TABLE}.DATASET_ATTRIB_ID ;;
  }

  dimension: dataset_instance_id {
    type: number
    sql: ${TABLE}.DATASET_INSTANCE_ID ;;
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
    drill_fields: [attrib_name]
  }
}
