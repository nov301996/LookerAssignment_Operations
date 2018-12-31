view: m_dataset_looker_map {
  sql_table_name: dbo.M_DATASET_LOOKER_MAP ;;

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.DATASET_ID ;;
  }

  dimension: looker_explore_nm {
    type: string
    sql: ${TABLE}.LOOKER_EXPLORE_NM ;;
  }

  dimension: looker_model_nm {
    type: string
    sql: ${TABLE}.LOOKER_MODEL_NM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
