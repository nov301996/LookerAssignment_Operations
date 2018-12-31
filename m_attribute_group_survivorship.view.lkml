view: m_attribute_group_survivorship {
  sql_table_name: dbo.M_ATTRIBUTE_GROUP_SURVIVORSHIP ;;

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: attribute_group_columns {
    type: string
    sql: ${TABLE}.ATTRIBUTE_GROUP_COLUMNS ;;
  }

  dimension: attribute_group_ranking_expr {
    type: string
    sql: ${TABLE}.ATTRIBUTE_GROUP_RANKING_EXPR ;;
  }

  dimension: attribute_group_survivorship_id {
    type: number
    sql: ${TABLE}.ATTRIBUTE_GROUP_SURVIVORSHIP_ID ;;
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

  dimension: master_table_dataset_id {
    type: number
    sql: ${TABLE}.MASTER_TABLE_DATASET_ID ;;
  }

  dimension: source_table_dataset_id {
    type: number
    sql: ${TABLE}.SOURCE_TABLE_DATASET_ID ;;
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
    drill_fields: []
  }
}
