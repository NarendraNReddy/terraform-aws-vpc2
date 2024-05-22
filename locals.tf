locals {
  resource_name="${var.Project_name}-${var.Environment}"
  azs=slice(data.aws_availability_zones.azs.names,0,2)
  
}