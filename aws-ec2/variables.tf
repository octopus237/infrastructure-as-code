variable "region" {
    default = "us-west-2"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "ami" {
    default = "ami-07dfed28fcf95241c"
}

variable "public_key" {
  default = "~/.ssh/dev-server.pub"
}