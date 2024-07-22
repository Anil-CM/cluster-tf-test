provider "ibm" {
  region           = var.location
  ibmcloud_timeout = 60
}

data "ibm_container_cluster_config" "config" {
  cluster_name_id   = var.cluster_id
  config_dir        = local.config_dir
  resource_group_id = data.ibm_resource_group.resource_group.id
}

data "ibm_resource_group" "resource_group" {
  name = var.resource_group_name
}

locals {
  config_dir = "/tmp"
}
