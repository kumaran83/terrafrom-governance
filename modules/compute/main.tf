resource "aws_instance" "this" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type
  tags = {
    Name = "${var.env}-instance"
    Env  = var.env
  }
}