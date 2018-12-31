view: m_mount_map {
  sql_table_name: dbo.M_MOUNT_MAP ;;

  dimension: linux_mount {
    type: string
    sql: ${TABLE}.LINUX_MOUNT ;;
  }

  dimension: mount_id {
    type: number
    sql: ${TABLE}.MOUNT_ID ;;
  }

  dimension: windows_mount {
    type: string
    sql: ${TABLE}.WINDOWS_MOUNT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
