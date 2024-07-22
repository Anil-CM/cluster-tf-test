variable "location" {
  description = "Location of the agent services.  It must be the same as the agent infrastructure/cluster location."
  type        = string
  default     = "eu-fr2"
}
variable "resource_group_name" {
  description = "Name of resource group used where agent infrastructure was provisioned"
  type        = string
  default = "Default"
}
variable "cluster_id" {
  description = "ID of the cluster used to run the agent service."
  type        = string
}
