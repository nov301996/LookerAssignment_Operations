view: vw_dataset_instance_source_lineage_dt {
  sql_table_name: dbo.VW_DATASET_INSTANCE_SOURCE_LINEAGE_DT ;;

  dimension: dataset_id {
    type: number
    sql: ${TABLE}.dataset_id ;;
  }

  dimension: dataset_instance_id {
    type: number
    sql: ${TABLE}.DATASET_INSTANCE_ID ;;
  }

  dimension_group: source_lineage_dt {
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
    sql: ${TABLE}.SOURCE_LINEAGE_DT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
