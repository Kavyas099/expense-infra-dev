

variable "common_tags" {
  default = {
    project = "divya"
    environment = "qa"
    terraform = "true"
  }
}

variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "qa"
}

variable "sg_description" {
  default = "this is sg"
}