view: m_version {
  sql_table_name: dbo.M_VERSION ;;

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
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

  dimension: version_id {
    type: number
    sql: ${TABLE}.VERSION_ID ;;
  }

  dimension: version_number {
    type: string
    sql: ${TABLE}.VERSION_NUMBER ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
