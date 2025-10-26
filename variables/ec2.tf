resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags=var.ec2-tags
}

resource "aws_security_group" "allow_all" {
    name = var.sg_name

    egress{
        from_port   = 0
        to_port     = 0
        protocol    = -1
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress{
       from_port   = 0
        to_port     = 0
        protocol    = -1
        cidr_blocks = ["0.0.0.0/0"] 
    }

    tags = {
    Name = "allow_all"
    }
}

