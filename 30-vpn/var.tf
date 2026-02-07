variable "project_name" {
    default = "roboshop"
}

variable "environment" {
    default = "qa"
}

variable "common_tags" {
    default = {
        Project = "roboshop"
        Environment = "qa"
        Terraform = "true"
    }
}