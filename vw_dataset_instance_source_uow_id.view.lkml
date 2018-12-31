view: vw_dataset_instance_source_uow_id {
  sql_table_name: dbo.VW_DATASET_INSTANCE_SOURCE_UOW_ID ;;

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.dataset_id ;;
  }

  dimension: dataset_instance_id {
    type: number
    sql: ${TABLE}.DATASET_INSTANCE_ID ;;
  }

  dimension: source_uow_id {
    type: string
    sql: ${TABLE}.SOURCE_UOW_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
