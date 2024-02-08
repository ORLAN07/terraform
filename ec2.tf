resource "aws_instance" "ec2_instance_test" {
  for_each = var.service_names 
  ami           = "ami-0c20d88b0021158c6"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2-${each.key}"
  }
}