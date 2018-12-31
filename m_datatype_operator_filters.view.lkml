view: m_datatype_operator_filters {
  sql_table_name: dbo.M_DATATYPE_OPERATOR_FILTERS ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: active_flg {
    type: string
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: datatype_id {
    type: number
    sql: ${TABLE}.DATATYPE_ID ;;
  }

  dimension: operator_id {
    type: number
    sql: ${TABLE}.OPERATOR_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
