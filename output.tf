output "id_vpc" {
  value = module.vpc.vpc_id
}
output "availabile_zones" {
  value = slice(data.aws_availability_zones.availables.names,0,2)
  # slicing- slice(list, startindex, endindex)

  # value = data.aws_availability_zones.availables.names
}
# After slicing -  availabile_zones = [
#       + "us-east-1a",
#       + "us-east-1b",
#     ]

# format of availabile_zones

# {
#       + all_availability_zones = null
#       + exclude_names          = null
#       + exclude_zone_ids       = null
#       + filter                 = null
#       + group_names            = [
#           + "us-east-1-zg-1",
#         ]
#       + id                     = "us-east-1"
#       + names                  = [
#           + "us-east-1a",
#           + "us-east-1b",
#           + "us-east-1c",
#           + "us-east-1d",
#           + "us-east-1e",
#           + "us-east-1f",
#         ]
#       + region                 = "us-east-1"
#       + state                  = "available"
#       + timeouts               = null
#       + zone_ids               = [
#           + "use1-az4",
#           + "use1-az6",
#           + "use1-az1",
#           + "use1-az2",
#           + "use1-az3",
#           + "use1-az5",
#         ]
#     }

output "eip-public-IP" {
  value = module.vpc.eip_public_ip
}