view: m_operator {
  sql_table_name: dbo.M_OPERATOR ;;

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

  dimension: operator {
    type: string
    sql: ${TABLE}.OPERATOR ;;
  }

  dimension: operator_hive {
    type: string
    sql: ${TABLE}.OPERATOR_HIVE ;;
  }

  dimension: operator_id {
    type: number
    sql: ${TABLE}.OPERATOR_ID ;;
  }

  dimension: operator_redshift {
    type: string
    sql: ${TABLE}.OPERATOR_REDSHIFT ;;
  }

  dimension: operator_sqls {
    type: string
    sql: ${TABLE}.OPERATOR_SQLS ;;
  }

  dimension: operator_type {
    type: string
    sql: ${TABLE}.OPERATOR_TYPE ;;
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
