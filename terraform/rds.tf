resource "aws_db_subnet_group" "db_subnet" {
  name = "devops-db-subnet"

  subnet_ids = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]

  tags = {
    Name = "My DB subnet group"
  }
}
resource "aws_db_instance" "postgres" {
  identifier        = "devops-db"
  engine            = "postgres"
  instance_class    = "db.t3.micro"
  allocated_storage = 20

  username = "devopsuser"
  password = "password123"

  publicly_accessible = false
  skip_final_snapshot = true

  vpc_security_group_ids = [aws_security_group.db_sg.id]

  db_subnet_group_name = aws_db_subnet_group.db_subnet.name
}

