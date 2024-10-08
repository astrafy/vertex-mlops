/**
 * Copyright 2023 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "addresses" {
  description = "Forwarding rule address."
  value       = { for k, v in google_compute_global_forwarding_rule.forwarding_rules : k => v.ip_address }
}

output "backend_service_ids" {
  description = "Backend service resources."
  value = {
    for k, v in google_compute_backend_service.default : k => v.id
  }
}

output "backend_service_names" {
  description = "Backend service resource names."
  value = {
    for k, v in google_compute_backend_service.default : k => v.name
  }
}

output "forwarding_rules" {
  description = "Forwarding rule resource."
  value       = google_compute_global_forwarding_rule.forwarding_rules
}

output "group_ids" {
  description = "Autogenerated instance group ids."
  value = {
    for k, v in google_compute_instance_group.default : k => v.id
  }
}

output "health_check_ids" {
  description = "Autogenerated health check ids."
  value = {
    for k, v in google_compute_health_check.default : k => v.id
  }
}

output "ids" {
  description = "Fully qualified forwarding rule ids."
  value       = { for k, v in google_compute_global_forwarding_rule.forwarding_rules : k => v.id }
}


output "neg_ids" {
  description = "Autogenerated network endpoint group ids."
  value = {
    for k, v in google_compute_network_endpoint_group.default : k => v.id
  }
}

output "psc_neg_ids" {
  description = "Autogenerated PSC network endpoint group ids."
  value = {
    for k, v in google_compute_region_network_endpoint_group.psc : k => v.id
  }
}

output "regional_neg_ids" {
  description = "Autogenerated regional network endpoint group ids."
  value = {
    for k, v in google_compute_region_network_endpoint_group.default : k => v.id
  }
}
