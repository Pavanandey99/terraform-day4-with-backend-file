resource "aws_instance" "ec2" {
    ami = "ami-08f78cb3cc8a4578e"
    instance_type = "t3.micro"
  
}

resource "aws_vpc" "new-vpc" {
    cidr_block = "10.0.0.0/24"
    tags = {
        Name = "new-vpc"
    }
    depends_on = [ aws_instance.ec2 ]
  
}

resource "aws_subnet" "new-vpc-subnet" {
    vpc_id = aws_vpc.new-vpc.id
    cidr_block = "10.0.0.0/28"
    tags = {
      Name = "new-vpc-subnet"
    }
    depends_on = [ aws_vpc.new-vpc ]
  
}