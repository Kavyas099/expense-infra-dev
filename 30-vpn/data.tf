
# data "aws_ami" "kavya" {
 
#     most_recent      = true
#     owners           = ["444663524611"]
#     filter {
#         name   = "name"
#         values = ["OpenVPN Access Server Community Image-0fd67-*"]
        
#     }

#     filter {
#         name   = "root-device-type"
#         values = ["ebs"]
#     }

#     filter {
#         name   = "virtualization-type"
#         values = ["hvm"]
#     }
# }


data "aws_ssm_parameter" "public_subnet_id" {
  name = "/${var.project_name}/${var.environment}/public_subnet_id"
}
data "aws_ssm_parameter" "vpn_sg_id" {
  name = "/${var.project_name}/${var.environment}/vpn_sg_id"
}