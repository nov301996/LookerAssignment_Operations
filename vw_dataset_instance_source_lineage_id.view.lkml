view: vw_dataset_instance_source_lineage_id {
  sql_table_name: dbo.VW_DATASET_INSTANCE_SOURCE_LINEAGE_ID ;;

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.dataset_id ;;
  }

  dimension: dataset_instance_id {
    type: number
    sql: ${TABLE}.DATASET_INSTANCE_ID ;;
  }

  dimension: source_lineage_id {
    type: number
    sql: ${TABLE}.SOURCE_LINEAGE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
