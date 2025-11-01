resource "aws_instance" "terraform" {
    ami = var.ami_id
    #count = 5
    count = length(var.instances)
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags={
        Name = var.instances[count.index]
        Terraform = "true"
        Project = "Roboshop"
    }
}

resource "aws_security_group" "allow_all" {
    name = var.sg_name

    egress{
        from_port   = var.egress_from_port
        to_port     = var.egress_to_port
        protocol    = var.protocol
        cidr_blocks = var.cidr
    }

    ingress{
       from_port   = var.ingress_from_port
        to_port     = var.ingress_to_port
        protocol    = var.protocol
        cidr_blocks = var.cidr
    }

    tags = {
    Name = "allow_all"
    }
}

