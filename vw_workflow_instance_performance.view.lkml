view: vw_workflow_instance_performance {
  sql_table_name: dbo.VW_WORKFLOW_INSTANCE_PERFORMANCE ;;

  dimension: wfi_avg_hrs {
    type: number
    sql: ${TABLE}.WFI_AVG_HRS ;;
  }

  dimension: wfi_avg_mins {
    type: number
    sql: ${TABLE}.WFI_AVG_MINS ;;
  }

  dimension: wfi_avg_num_records_deleted {
    type: number
    sql: ${TABLE}.WFI_AVG_NUM_RECORDS_DELETED ;;
  }

  dimension: wfi_avg_num_records_inserted {
    type: number
    sql: ${TABLE}.WFI_AVG_NUM_RECORDS_INSERTED ;;
  }

  dimension: wfi_avg_num_records_updated {
    type: number
    sql: ${TABLE}.WFI_AVG_NUM_RECORDS_UPDATED ;;
  }

  dimension: wfi_avg_secs {
    type: number
    sql: ${TABLE}.WFI_AVG_SECS ;;
  }

  dimension: wfi_avg_time {
    type: string
    sql: ${TABLE}.WFI_AVG_TIME ;;
  }

  dimension: wfi_count {
    type: number
    sql: ${TABLE}.WFI_COUNT ;;
  }

  dimension: wfi_max_hrs {
    type: number
    sql: ${TABLE}.WFI_MAX_HRS ;;
  }

  dimension: wfi_max_mins {
    type: number
    sql: ${TABLE}.WFI_MAX_MINS ;;
  }

  dimension: wfi_max_num_records_deleted {
    type: number
    sql: ${TABLE}.WFI_MAX_NUM_RECORDS_DELETED ;;
  }

  dimension: wfi_max_num_records_inserted {
    type: number
    sql: ${TABLE}.WFI_MAX_NUM_RECORDS_INSERTED ;;
  }

  dimension: wfi_max_num_records_updated {
    type: number
    sql: ${TABLE}.WFI_MAX_NUM_RECORDS_UPDATED ;;
  }

  dimension: wfi_max_secs {
    type: number
    sql: ${TABLE}.WFI_MAX_SECS ;;
  }

  dimension: wfi_max_time {
    type: string
    sql: ${TABLE}.WFI_MAX_TIME ;;
  }

  dimension: wfi_min_hrs {
    type: number
    sql: ${TABLE}.WFI_MIN_HRS ;;
  }

  dimension: wfi_min_mins {
    type: number
    sql: ${TABLE}.WFI_MIN_MINS ;;
  }

  dimension: wfi_min_num_records_deleted {
    type: number
    sql: ${TABLE}.WFI_MIN_NUM_RECORDS_DELETED ;;
  }

  dimension: wfi_min_num_records_inserted {
    type: number
    sql: ${TABLE}.WFI_MIN_NUM_RECORDS_INSERTED ;;
  }

  dimension: wfi_min_num_records_updated {
    type: number
    sql: ${TABLE}.WFI_MIN_NUM_RECORDS_UPDATED ;;
  }

  dimension: wfi_min_secs {
    type: number
    sql: ${TABLE}.WFI_MIN_SECS ;;
  }

  dimension: wfi_min_time {
    type: string
    sql: ${TABLE}.WFI_MIN_TIME ;;
  }

  dimension_group: wfi_start_dt_max {
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
    sql: ${TABLE}.WFI_START_DT_MAX ;;
  }

  dimension: wfi_sum_hrs {
    type: number
    sql: ${TABLE}.WFI_SUM_HRS ;;
  }

  dimension: wfi_sum_mins {
    type: number
    sql: ${TABLE}.WFI_SUM_MINS ;;
  }

  dimension: wfi_sum_num_records_deleted {
    type: number
    sql: ${TABLE}.WFI_SUM_NUM_RECORDS_DELETED ;;
  }

  dimension: wfi_sum_num_records_inserted {
    type: number
    sql: ${TABLE}.WFI_SUM_NUM_RECORDS_INSERTED ;;
  }

  dimension: wfi_sum_num_records_updated {
    type: number
    sql: ${TABLE}.WFI_SUM_NUM_RECORDS_UPDATED ;;
  }

  dimension: wfi_sum_secs {
    type: number
    sql: ${TABLE}.WFI_SUM_SECS ;;
  }

  dimension: wfi_sum_time {
    type: string
    sql: ${TABLE}.WFI_SUM_TIME ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.WORKFLOW_ID ;;
  }

  dimension: workflow_name {
    type: string
    sql: ${TABLE}.WORKFLOW_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [workflow_name]
  }
}
