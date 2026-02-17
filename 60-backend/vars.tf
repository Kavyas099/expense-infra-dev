variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "qa"
}

variable "common_tags" {
  default = {
    project_name = "roboshop"
    environment = "qa"
    terraform = "true"
  }
}


variable "domain_name" {
    default = "koti.lat"
}