view: vw_dataset_sync_info {
  sql_table_name: dbo.VW_DATASET_SYNC_INFO ;;

  dimension: destination_dataset {
    type: string
    sql: ${TABLE}.destination_dataset ;;
  }

  dimension: destination_dataset_id {
    type: number
    sql: ${TABLE}.destination_dataset_id ;;
  }

  dimension: destination_host_id {
    type: number
    sql: ${TABLE}.destination_host_id ;;
  }

  dimension: destination_schema {
    type: string
    sql: ${TABLE}.destination_schema ;;
  }

  dimension: maintenance_strategy {
    type: string
    sql: ${TABLE}.maintenance_strategy ;;
  }

  dimension: nbr_workflows_using_sync {
    type: number
    sql: ${TABLE}.nbr_workflows_using_sync ;;
  }

  dimension: source_dataset {
    type: string
    sql: ${TABLE}.source_dataset ;;
  }

  dimension: source_dataset_id {
    type: number
    sql: ${TABLE}.source_dataset_id ;;
  }

  dimension: source_host_id {
    type: number
    sql: ${TABLE}.source_host_id ;;
  }

  dimension: source_schema {
    type: string
    sql: ${TABLE}.source_schema ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
