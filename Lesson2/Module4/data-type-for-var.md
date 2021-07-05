## This snippet is from the Data Types for Variable.

### ec2_datatype.tf

Based Code:
```sh
provider "aws" {
  region     = "ap-southeast-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

resource "aws_iam_user" "lb" {
  name = var.usernumber
  path = "/system/"
}

```
### elb.tf

Documentation:  https://www.terraform.io/docs/providers/aws/r/elb.html

Adjust Code for variable:

```sh
provider "aws" {
  region     = "ap-southeast-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

resource "aws_elb" "lb" {
  name               = var.elb_name
  availability_zones = var.az

  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  cross_zone_load_balancing   = true
  idle_timeout                = var.timeout
  connection_draining         = true
  connection_draining_timeout = var.timeout

  tags = {
    Name = "my-terraform-elb"
  }
}
```
### variables.tf

```sh

variable "usernumber" {
  type = number
}

variable "elb_name" {
  type = string
}

variable "az" {
  type = list
}

variable "timeout" {
  type = number
}
```
### terraform.tfvars
```sh
elb_name="myelb"
timeout="400"
az=["ap-southeast-1a","ap-southeast-1b","ap-southeast-1c"]
```
