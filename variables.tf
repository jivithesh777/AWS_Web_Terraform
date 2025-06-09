variable "region" {
    type = string
    default = "us-east-1"
}

variable "amiId" {
  type = string
  default = "ami-02457590d33d576c3"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "key_name" {
    type = string
    default = "terraform1"
}

variable "aws_access_key" {}
variable "aws_secret_key" {}