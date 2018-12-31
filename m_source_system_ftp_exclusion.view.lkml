view: m_source_system_ftp_exclusion {
  sql_table_name: dbo.M_SOURCE_SYSTEM_FTP_EXCLUSION ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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

  dimension: exclusion_type {
    type: string
    sql: ${TABLE}.EXCLUSION_TYPE ;;
  }

  dimension: exclusion_value {
    type: string
    sql: ${TABLE}.EXCLUSION_VALUE ;;
  }

  dimension: source_system_id {
    type: number
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
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
    drill_fields: [id]
  }
}
