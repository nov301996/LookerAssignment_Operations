view: m_datatype_regex {
  sql_table_name: dbo.M_DATATYPE_REGEX ;;

  dimension: byte_size_hive {
    type: number
    sql: ${TABLE}.BYTE_SIZE_HIVE ;;
  }

  dimension: byte_size_redshift {
    type: number
    sql: ${TABLE}.BYTE_SIZE_REDSHIFT ;;
  }

  dimension: byte_size_sqls {
    type: number
    sql: ${TABLE}.BYTE_SIZE_SQLS ;;
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

  dimension: datatype_id {
    type: number
    sql: ${TABLE}.DATATYPE_ID ;;
  }

  dimension: datatype_name {
    type: string
    sql: ${TABLE}.DATATYPE_NAME ;;
  }

  dimension: datatype_name_hive {
    type: string
    sql: ${TABLE}.DATATYPE_NAME_HIVE ;;
  }

  dimension: datatype_name_redshift {
    type: string
    sql: ${TABLE}.DATATYPE_NAME_REDSHIFT ;;
  }

  dimension: datatype_name_sqls {
    type: string
    sql: ${TABLE}.DATATYPE_NAME_SQLS ;;
  }

  dimension: datatype_regex {
    type: string
    sql: ${TABLE}.DATATYPE_REGEX ;;
  }

  dimension: max_length_hive {
    type: number
    sql: ${TABLE}.MAX_LENGTH_HIVE ;;
  }

  dimension: max_length_redshift {
    type: number
    sql: ${TABLE}.MAX_LENGTH_REDSHIFT ;;
  }

  dimension: max_length_sqls {
    type: number
    sql: ${TABLE}.MAX_LENGTH_SQLS ;;
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
    drill_fields: [datatype_name]
  }
}
