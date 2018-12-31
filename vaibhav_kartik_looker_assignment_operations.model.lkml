connection: "cdptraining01_metastore"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: m_track_workflow_instance {
join: m_workflow {
  type: inner
  sql_on: ${m_track_workflow_instance.workflow_id}=${m_workflow.workflow_id} ;;
  relationship: many_to_one
}

join: c_vw_mtwd {
  type: left_outer
  sql_on: ${c_vw_mtwd.workflow_instance_id}=${m_track_workflow_instance.workflow_instance_id} ;;
  relationship: many_to_one
}

  join:m_track_dataset_instance {
    type: left_outer
    sql_on: ${c_vw_mtwd.dsi_in}=${m_track_dataset_instance.dataset_instance_id} ;;
    relationship: many_to_one
  }

  join: m_track_dataset_instance_1 {
    type: left_outer
    sql_on: ${c_vw_mtwd.dsi_out}=${m_track_dataset_instance.dataset_instance_id} ;;
    relationship: many_to_one
  }

  join: m_dataset_instance_status {
    type: left_outer
    sql_on: ${m_dataset_instance_status.status_id}=${m_track_dataset_instance.status_id} ;;
    relationship: many_to_one
  }

  join: m_dataset_instance_status_1 {
    type: left_outer
    sql_on: ${m_dataset_instance_status_1.status_id}=${m_track_dataset_instance_1.status_id} ;;
    relationship: many_to_one
  }

  join: m_dataset {
    type: left_outer
    sql_on: ${m_dataset.dataset_id}=${m_track_dataset_instance.dataset_id} ;;
    relationship: many_to_one
  }

  join: m_host {
    type: left_outer
    sql_on: ${m_dataset.host_id}=${m_host.host_id} ;;
    relationship: many_to_one
  }

  join: m_dataset_1 {
    type: left_outer
    sql_on: ${m_dataset_1.dataset_id}=${m_track_dataset_instance_1.dataset_id} ;;
    relationship: many_to_one
  }

  join: m_host_1 {
    type:left_outer
    sql_on: ${m_dataset_1.host_id}=${m_host_1.host_id} ;;
    relationship: many_to_one
  }

  join: m_track_output_dataset_instance_stats {
    type: left_outer
    sql_on: ${c_vw_mtwd.workflow_dataset_instance_map_id}=${m_track_output_dataset_instance_stats.workflow_dataset_instance_map_id} ;;
    relationship: many_to_one
  }

  join: m_track_file {
    type: left_outer
    sql_on: ${m_track_dataset_instance.dataset_instance_id}=${m_track_file.dataset_instance_id} ;;
    relationship: many_to_one
  }

join: m_track_event_log {
  type: left_outer
  sql_on: (${m_track_workflow_instance.event_group_id}=${m_track_event_log.event_group_id}) AND (${m_track_event_log.event_msg} LIKE '%/oozie/?%';;
  relationship: many_to_one
}

join: m_workflow_instance_status {
  type: inner
  sql_on: ${m_workflow_instance_status.status_id}=${m_track_workflow_instance.status_id};;
  relationship:one_to_one
}

join: m_workflow_type {
  type: inner
  sql_on: ${m_workflow_type.workflow_type_id}=${m_workflow.workflow_type_id} ;;
  relationship:one_to_one
}

join: m_workflow_execution_subsystem {
  type: inner
  sql_on: ${m_workflow_execution_subsystem.workflow_execution_subsystem_id}=${m_workflow.workflow_execution_subsystem_id} ;;
  relationship: one_to_one
}
}
