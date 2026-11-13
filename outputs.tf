output "event_orchestration_services_id" {
  description = "Map of id values across all event_orchestration_services, keyed the same as var.event_orchestration_services"
  value       = { for k, v in pagerduty_event_orchestration_service.event_orchestration_services : k => v.id }
}
output "event_orchestration_services_catch_all" {
  description = "Map of catch_all values across all event_orchestration_services, keyed the same as var.event_orchestration_services"
  value       = { for k, v in pagerduty_event_orchestration_service.event_orchestration_services : k => one(v.catch_all) }
}
output "event_orchestration_services_enable_event_orchestration_for_service" {
  description = "Map of enable_event_orchestration_for_service values across all event_orchestration_services, keyed the same as var.event_orchestration_services"
  value       = { for k, v in pagerduty_event_orchestration_service.event_orchestration_services : k => v.enable_event_orchestration_for_service }
}
output "event_orchestration_services_service" {
  description = "Map of service values across all event_orchestration_services, keyed the same as var.event_orchestration_services"
  value       = { for k, v in pagerduty_event_orchestration_service.event_orchestration_services : k => v.service }
}
output "event_orchestration_services_set" {
  description = "Map of set values across all event_orchestration_services, keyed the same as var.event_orchestration_services"
  value       = { for k, v in pagerduty_event_orchestration_service.event_orchestration_services : k => v.set }
}

