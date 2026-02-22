variable "project_name" {
  default =  "roboshop"
}


variable "environment" {
  default = "qa"
}

variable "common_tags" {
  default =  {
    name = "roboshop"
    environment = "qa"
    terraform = "true"
  }
}

variable "domain_name" {
  default = "koti.lat"
}

variable "zone_id" {
    default = "Z04757596NZDGVB9VM0A"
}