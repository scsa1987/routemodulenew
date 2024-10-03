# main.tf

module "update_route_tables" {
source = "./Modules/vpc_routes1"
  route_tables    = var.route_tables    # Pass the route tables variable
  route_table_id = var.route_table_id

}




