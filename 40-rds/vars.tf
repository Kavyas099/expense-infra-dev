variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "qa"
}

variable "common_tags" {
  default = {
    Name = "roboshop"
    environment = "qa"
    terraform = "true"

  }
}

variable "zone_id" {
  default =  "Z101889337ZRT9TRTL05S"
}

variable "domain_name" {
    default = " kavya.us.cc "
}
  
