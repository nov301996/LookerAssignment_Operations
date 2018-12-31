view: m_track_semantic_view_map {
  sql_table_name: dbo.M_TRACK_SEMANTIC_VIEW_MAP ;;

  dimension: dataset_instance_id {
    type: number
    sql: ${TABLE}.DATASET_INSTANCE_ID ;;
  }

  dimension: host_id {
    type: number
    sql: ${TABLE}.HOST_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
