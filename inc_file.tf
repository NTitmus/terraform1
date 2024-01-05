resource "aws_instance" "simple" {
  instance_type          = "t2.micro"
  ami                    = "ami-0cfd0973db26b893b"
  monitoring             = true

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

}