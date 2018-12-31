view: m_module {
  sql_table_name: dbo.M_MODULE ;;

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

  dimension: id_range_end {
    type: number
    sql: ${TABLE}.ID_RANGE_END ;;
  }

  dimension: id_range_start {
    type: number
    sql: ${TABLE}.ID_RANGE_START ;;
  }

  dimension: module_id {
    type: number
    sql: ${TABLE}.MODULE_ID ;;
  }

  dimension: module_name {
    type: string
    sql: ${TABLE}.MODULE_NAME ;;
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
    drill_fields: [module_name]
  }
}
