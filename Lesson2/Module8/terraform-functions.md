## This snippet is from the Terraform Function.

### terraform-functions.tf

```sh
provider "aws" {
  region     = var.region
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

variable "region" {
  default = "ap-south-1"
}

variable "tags" {
  type = list
  default = ["firstec2","secondec2"]
}

variable "ami" {
  type = map
  default = {
    "ap-south-1" = "ami-0470e33cd681b2476"
    "us-east-1"  = "ami-0323c3dd2da7fb37d"
    "us-west-2"  = "ami-0d6621c01e8c2de2c"
  }
}

resource "aws_key_pair" "loginkey" {
  key_name   = "login-key"
  public_key = file("${path.module}/my_id_rsa.pub")
}

resource "aws_instance" "app-dev" {
   ami = lookup(var.ami,var.region)
   instance_type = "t2.micro"
   key_name = aws_key_pair.loginkey.key_name
   count = 2

   tags = {
     Name = element(var.tags,count.index)
   }
}


output "timestamp" {
  value = local.time
}
```
### Required: you was created "my_id_rsa.pub" file at AWS "EC2 -> NW&SEC -> Key Pairs"
```sh
User guide: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html

1. In the navigation pane, under Network & Security, choose Key Pairs.
2. Choose Create key pair.
3. For Name, enter a descriptive name for the key pair. ...
4. For File format, choose the format in which to save the private key. ...
5. Choose Create key pair.
6. The private key file is automatically downloaded by your browser.
```
