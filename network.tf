resource "aws_vpc" "test-vpc" {
 cidr_block =  var.cidr_block[1] 

 tags = {
    Name = "Test1-vpc"
 }
}

resource "aws_subnet" "Hari-subnet" {
    vpc_id = aws_vpc.test-vpc.id
    cidr_block = var.Hari["sub-2"]
    tags = {
        Name = "Loka"
    }  
}