resource "aws_instance" "ec2" {
    ami=var.id
    instance_type = var.inst-type
    tags = {
        Name = "new ec2 from terraform"
    }
}