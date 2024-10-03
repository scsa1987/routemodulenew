
  route_tables = {
  "rtb-04673f79b92fb25bc" = [
    {
      destination_cidr_block = "10.0.0.0/16"
      gateway_id             = "igw-0bfa5c9b16875df09"
    },
    {
      destination_cidr_block = "172.16.0.0/16"
      transit_gateway_id     = "tgw-0010647b39c9f6bac"
    }
  ],
  "rtb-0cf1391c4f7072713" = [
    {
      destination_cidr_block = "192.168.1.0/24"
      nat_gateway_id         = "nat-abcdef1234567890"
    },
    {
      destination_cidr_block = "172.16.0.0/16"
      transit_gateway_id     = "tgw-0010647b39c9f6bac"
    }
  ]
}
