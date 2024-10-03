variable "route_tables" {
  description = "Map of route tables and their route configurations"
  type = map(list(object({
    destination_cidr_block      = string
    gateway_id                  = optional(string)
    nat_gateway_id              = optional(string)
    transit_gateway_id          = optional(string)
    egress_only_gateway_id      = optional(string)
    local_gateway_id            = optional(string)
    network_interface_id        = optional(string)
    vpc_peering_connection_id   = optional(string)
    carrier_gateway_id          = optional(string)
    destination_prefix_list_id  = optional(string)
  })))
}

variable "route_table_id" {
  
}
