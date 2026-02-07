module "db"{
    
  source = "terraform-aws-modules/rds/aws"
    identifier = local.rds_name
   
   
  engine = "mysql"
  engine_version = "8.0.40"
  instance_class = "db.t4g.micro"
  allocated_storage = 20 

  db_name = "transactions"
  
username = "admin"
  port = 3306
      # ✅ directly set
manage_master_user_password = true # ✅ this replaces password
vpc_security_group_ids = [local.mysql_sg_id]

create_db_subnet_group = false
skip_final_snapshot = true
db_subnet_group_name = local.database_subnet_group_name.value

family = "mysql8.0"

major_engine_version = "8.0"

deletion_protection = false


tags = merge (
    var.common_tags,
    {
        Name = local.resource_name
    }
)
}


resource "aws_route53_record" "www-dev" {
  zone_id = var.zone_id
  name    = "mysql-${var.environment}.${var.domain_name}"
  type    = "CNAME"
  ttl     = 5
  records = [module.db.db_instance_address]
}