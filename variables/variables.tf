variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "ec2-tags" {
  type = map
  default = {
    Nmae = "terraform-demo"
    Terraform = "true"
    Project = "devopslab"
    Environment = "Dev"
  }
}

variable "sg_name" {
  type = string
  default = "allow-all"
}
