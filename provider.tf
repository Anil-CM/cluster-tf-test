terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "~>1.61.0"
    }
  }
  required_version = ">=1.0"
  # experiments      = [module_variable_optional_attrs]
}
