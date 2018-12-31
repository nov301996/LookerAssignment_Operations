view: m_individual_attribute_sync_i {
  sql_table_name: dbo.M_INDIVIDUAL_ATTRIBUTE_SYNC_I ;;

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: attribute_definition_sql {
    type: string
    sql: ${TABLE}.ATTRIBUTE_DEFINITION_SQL ;;
  }

  dimension: attribute_desc {
    type: string
    sql: ${TABLE}.ATTRIBUTE_DESC ;;
  }

  dimension: attribute_name {
    type: string
    sql: ${TABLE}.ATTRIBUTE_NAME ;;
  }

  dimension: attribute_value_datatype_id {
    type: number
    sql: ${TABLE}.ATTRIBUTE_VALUE_DATATYPE_ID ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.CLIENT_ID ;;
  }

  dimension: dataset_instance_id {
    type: number
    sql: ${TABLE}.DATASET_INSTANCE_ID ;;
  }

  dimension: individual_attribute_id {
    type: number
    sql: ${TABLE}.INDIVIDUAL_ATTRIBUTE_ID ;;
  }

  dimension: input_dataset_ids {
    type: string
    sql: ${TABLE}.INPUT_DATASET_IDS ;;
  }

  dimension: sys_change_operation {
    type: string
    sql: ${TABLE}.SYS_CHANGE_OPERATION ;;
  }

  measure: count {
    type: count
    drill_fields: [attribute_name]
  }
}
