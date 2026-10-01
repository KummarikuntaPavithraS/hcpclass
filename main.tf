

terraform{
required_providers{
aws={
source="hashicorp/aws"
version=">5.0,<7.0"
}
}
}

provider "aws"{
region="ap-south-2"
}


resource "aws_instance" "pavi"{
ami="ami-0145fa7273a830754"
instance_type="t3.small"

tags={
name="Amazon-server"
}
}
