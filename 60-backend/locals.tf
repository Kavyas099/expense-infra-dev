locals {
    database_sg_id = data.aws_ssm_parameter.database_sg_id.value


  private_subnet_id = split(",", data.aws_ssm_parameter.private_subnet_id.value)[0]
  private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_id.value)
  resource_name = "${var.project_name}-${var.environment}-backend"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
}
