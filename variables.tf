/**
 * Copyright 2018 Google LLC
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

variable "project_id" {
  description = "The ID of the project where this VPC will be created"
}

variable "network" {
  description = "The name of VPC being created"
}

variable "region" {
  description = "The region in which you want to create the VPN gateway"
}

variable "gateway_name" {
  description = "The name of VPN gateway"
  default     = "test-vpn"
}

variable "tunnel_count" {
  description = "The number of tunnels from each VPN gw (default is 1)"
  default     = 1
}

variable "tunnel_name_prefix" {
  description = "The optional custom name of VPN tunnel being created"
  default     = ""
}

variable "peer_ips" {
  type        = "list"
  description = "IP address of remote-peer/gateway"
}

variable "remote_subnet" {
  description = "remote subnet ip range in CIDR format - x.x.x.x/x"
  type        = "list"
  default     = []
}

variable "shared_secret" {
  description = "Please enter the shared secret/pre-shared key"
  default     = ""
}

variable "route_priority" {
  description = "Priority for static route being created"
  default     = 1000
}

variable "cr_name" {
  description = "The name of cloud router for BGP routing"
  default     = ""
}

variable "peer_asn" {
  type        = "list"
  description = "Please enter the ASN of the BGP peer that cloud router will use"
  default     = ["65101"]
}

variable "bgp_cr_session_range" {
  type        = "list"
  description = "Please enter the cloud-router interface IP/Session IP"
  default     = ["169.254.1.1/30", "169.254.1.5/30"]
}

variable "bgp_remote_session_range" {
  type        = "list"
  description = "Please enter the remote environments BGP Session IP"
  default     = ["169.254.1.2", "169.254.1.6"]
}

variable "advertised_route_priority" {
  description = "Please enter the priority for the advertised route to BGP peer(default is 100)"
  default     = 100
}
