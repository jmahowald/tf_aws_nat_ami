variable "region" {}
variable "version" {
  default = "2016.03.0"
}
variable "virttype" {
  default = "hvm"
}
variable "volumetype" {
  default = "ebs"
}

output "ami_id" {
  value = "${lookup(var.amis, format("%s,amzn-ami-vpc-nat-%s-%s.x86_64-%s", var.region, var.virttype, var.version, var.volumetype))}"
}
