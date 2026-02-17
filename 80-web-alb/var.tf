variable "project_name" {
  default =  "roboshop"
}


variable "environment" {
  default = "dev"
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
    default = "Z05104993MTIP8133E6OX"
}