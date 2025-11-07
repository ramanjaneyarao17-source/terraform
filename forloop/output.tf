output "instance_output"{
  value = aws_instance.terraform
}

output "dns_names_output"{
  value = aws_route53_record.roboshop
}