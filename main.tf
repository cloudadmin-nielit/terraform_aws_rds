resource "aws_db_instance" "my_rds" {
  identifier              = "my-first-rds"
  allocated_storage       = 20
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"

  db_name                 = "testdb"
  username                = "admin"
  password                = "Admin@12345"

  publicly_accessible     = true
  skip_final_snapshot     = true

  tags = {
    Name = "MyTerraformRDS"
  }
}
