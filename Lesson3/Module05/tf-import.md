### Sample code for Terraform import

### ec2.tf
```sh
resource "aws_instance" "myec2" {
  ami = "ami-02f26adf094f51167"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["<YOUR-SG-ID-1>", "<YOUR-SG-ID-2>"]
  key_name = "<YOUR-KEY-PAIR-FOR-EC2>"
  subnet_id = "<YOUR-SUBNET-ID>"

  tags {
    Name = "manual"
  }
}
```
### providers.tf
```sh
provider "aws" {
  region = "ap-southeast-1"
}

```
### Command To Show Resource
sample of state list we have "aws_instance.myec2"
```sh
terraform state list
terraform state show aws_instance.myec2
```

### Command To Import Resource
sample of resource id is "i-041886edd7e9cb12"
```sh
terraform import aws_instance.myec2 <resource_id>
```
