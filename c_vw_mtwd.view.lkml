view: c_vw_mtwd {
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
  derived_table: {
    sql: SELECT  b.workflow_dataset_instance_map_id,coalesce(a.workflow_instance_id,b.workflow_instance_id) AS workflow_instance_id
                          ,a.dataset_instance_id as dsi_in
                          ,b.dataset_instance_id as dsi_out
               FROM (select  workflow_dataset_instance_map_id,workflow_instance_id,dataset_instance_direction,dataset_instance_id
                          from m_track_workflow_dataset_instance_map where lower(dataset_instance_direction)='input')a
              full outer join (select  workflow_dataset_instance_map_id,workflow_instance_id,dataset_instance_direction,dataset_instance_id
      from m_track_workflow_dataset_instance_map where lower(dataset_instance_direction)='output')b
               on a.workflow_instance_id=b.workflow_instance_id ;;
  }dimension: workflow_dataset_instance_map_id {
    type: number
    sql: ${TABLE}.workflow_dataset_instance_map_id ;;

  }

  dimension: dataset_instance_direction {
    type: string
    sql: ${TABLE}.dataset_instance_direction ;;
  }

  dimension:workflow_instance_id  {
    type: number
    sql: ${TABLE}.workflow_instance_id ;;
  }

  dimension:dsi_in {
    type: number
    sql: ${TABLE}.dsi_in ;;
  }

  dimension: dsi_out {
    type: number
    sql: ${TABLE}.dsi_out ;;
  }
}

# view: c_vw_mtwd {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
