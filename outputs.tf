output "event_orchestration_services_id" {
  description = "Map of id values across all event_orchestration_services, keyed the same as var.event_orchestration_services except keys with no id are omitted"
  value       = { for k, v in pagerduty_event_orchestration_service.event_orchestration_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "event_orchestration_services_catch_all" {
  description = "Map of catch_all values across all event_orchestration_services, keyed the same as var.event_orchestration_services except keys with no catch_all are omitted"
  value       = { for k, v in pagerduty_event_orchestration_service.event_orchestration_services : k => one(v.catch_all) if v.catch_all != null && length(v.catch_all) > 0 }
}
output "event_orchestration_services_enable_event_orchestration_for_service" {
  description = "Map of enable_event_orchestration_for_service values across all event_orchestration_services, keyed the same as var.event_orchestration_services except keys with no enable_event_orchestration_for_service are omitted"
  value       = { for k, v in pagerduty_event_orchestration_service.event_orchestration_services : k => v.enable_event_orchestration_for_service if v.enable_event_orchestration_for_service != null }
}
output "event_orchestration_services_service" {
  description = "Map of service values across all event_orchestration_services, keyed the same as var.event_orchestration_services except keys with no service are omitted"
  value       = { for k, v in pagerduty_event_orchestration_service.event_orchestration_services : k => v.service if v.service != null && length(v.service) > 0 }
}
output "event_orchestration_services_set" {
  description = "Map of set values across all event_orchestration_services, keyed the same as var.event_orchestration_services except keys with no set are omitted"
  value       = { for k, v in pagerduty_event_orchestration_service.event_orchestration_services : k => v.set if v.set != null && length(v.set) > 0 }
}

