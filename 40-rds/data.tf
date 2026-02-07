data "aws_ssm_parameter" "mysql_sg_id" {
    name = "/${var.project_name}/${var.environment}/mysql_sg_id"
}

data "aws_ssm_parameter" "public_subnet_id" {
    name = "/${var.project_name}/${var.environment}/public_subnet_id"
}

data "aws_ssm_parameter"  "database_subnet_group_name"  {
    name = "/${var.project_name}/${var.environment}/database_subnet_group_name"
}

resource "aws_secretsmanager_secret" "db_password" {
  name = "roboshop/qa/mysql/password"
}

resource "aws_secretsmanager_secret_version" "db_password_value" {
  secret_id     = aws_secretsmanager_secret.db_password.id
  secret_string = jsonencode({
    username = "admin"
    password = "ExpenseApp1"
  })
}

