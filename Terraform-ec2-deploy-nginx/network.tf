# create an IGW (Internet Gateway)
# It enables your vpc to connect to the internet
resource "aws_internet_gateway" "test-igw" {
    vpc_id = aws_vpc.test-vpc.id

    tags = {
        Name = "test-igw"
    }
}

# Define a route table for the public subnet
resource "aws_route_table" "public-rt" {
    vpc_id = aws_vpc.test-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.test-igw.id
    }

    tags = {
        Name = "public-rt"
    }
}

# Associate the public subnet with the public route table
resource "aws_route_table_association" "public-subnet-association" {
    subnet_id      = aws_subnet.public-subnet.id
    route_table_id = aws_route_table.public-rt.id
}

# security group
resource "aws_security_group" "test-sg" {
  vpc_id = aws_vpc.test-vpc.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "test-sg"
  }
}
