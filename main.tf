provider "ibm" {
  region           = var.location
  ibmcloud_timeout = 60
}

##############################################################################

provider "kubernetes" {
  config_path = data.ibm_container_cluster_config.config.config_file_path
}

provider "kubectl" {
  config_path = data.ibm_container_cluster_config.config.config_file_path
}
##############################################################################


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
