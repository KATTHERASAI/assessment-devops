resource "aws_ssm_parameter" "db_username" {
  name  = "/devops/db/username"
  type  = "String"
  value = "devopsuser"
}

resource "aws_ssm_parameter" "db_password" {
  name  = "/devops/db/password"
  type  = "String"
  value = "Devops@123"
}