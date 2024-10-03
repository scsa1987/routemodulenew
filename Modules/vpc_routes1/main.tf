locals {
  # Access the routes for the specific route table by its ID
  selected_rt_routes = var.route_tables[var.route_table_id]
}

resource "aws_route" "vpc_routes" {
  for_each = { for route in local.selected_rt_routes : route.destination_cidr_block => route }

  route_table_id         = var.route_table_id
  destination_cidr_block = each.key

  transit_gateway_id          = each.value.transit_gateway_id
  gateway_id                  = each.value.gateway_id
  nat_gateway_id              = each.value.nat_gateway_id
  network_interface_id        = each.value.network_interface_id
  vpc_peering_connection_id   = each.value.vpc_peering_connection_id
  egress_only_gateway_id      = each.value.egress_only_gateway_id
  carrier_gateway_id          = each.value.carrier_gateway_id
  destination_prefix_list_id  = each.value.destination_prefix_list_id
}
