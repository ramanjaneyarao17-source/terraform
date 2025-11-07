variable "instances" {
  default = [ "mongodb", "redis", "mysql"]
}

variable "instance_tyep"{
    default = "t3.micro"
}

variable "ami_id"{
    default = "ami-09c813fb71547fc4f"
}

variable "zone_id"{
    type = string
    default = "Z02924041FFOXE7DAG1VG"
}

variable "domain_name"{
    default = "mycloudjourney.space"
}