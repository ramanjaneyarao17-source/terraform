variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instances"{
    default = ["redis", "Mongodb", "mysql"]
}
variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "sg_name" {
    type = string
    default = "allow-all"
    # optional to inform what is this variable about
    description = "Security Group Name to attach to EC2 instance"
}

variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}

variable "egress_from_port" {
    default = 0
}

variable "egress_to_port" {
    default = 0
}

variable "protocol" {
    type = string
    default = "-1"
}

variable "zone_id"{
    type = string
    default = "Z02924041FFOXE7DAG1VG"
}

variable "domain_name"{
    default = "mycloudjourney.space"
}