provider "aws" {
	access_key = "${var.aws_access_key}"
	secret_key = "${var.aws_secret_key}"
	region = "${var.aws_region}"
}

resource "aws_instance" "test" {
  ami = "ami-1d2b2958"
  instance_type = "m3.medium"
  key_name = "cf-sunrise"
  associate_public_ip_address = true
  security_groups = ["sg-f2f55397"]
  subnet_id = "subnet-6e0ad40b"
  source_dest_check = false
  tags {
   Name = "test server"
  }

}
