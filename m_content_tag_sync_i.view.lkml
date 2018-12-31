view: m_content_tag_sync_i {
  sql_table_name: dbo.M_CONTENT_TAG_SYNC_I ;;

  dimension: active_flg {
    type: number
    sql: ${TABLE}.ACTIVE_FLG ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.CLIENT_ID ;;
  }

  dimension: content_tag_group {
    type: string
    sql: ${TABLE}.CONTENT_TAG_GROUP ;;
  }

  dimension: content_tag_id {
    type: number
    sql: ${TABLE}.CONTENT_TAG_ID ;;
  }

  dimension: dataset_instance_id {
    type: number
    sql: ${TABLE}.DATASET_INSTANCE_ID ;;
  }

  dimension: matching_expression {
    type: string
    sql: ${TABLE}.MATCHING_EXPRESSION ;;
  }

  dimension: sys_change_operation {
    type: string
    sql: ${TABLE}.SYS_CHANGE_OPERATION ;;
  }

  dimension: tagging_expression {
    type: string
    sql: ${TABLE}.TAGGING_EXPRESSION ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
