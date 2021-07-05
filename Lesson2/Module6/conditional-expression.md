## This snippet is from the Conditional Expression.

### conditional-expression.tf

```sh

provider "aws" {
  region     = "ap-southeast-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

variable "istest" {}

resource "aws_instance" "dev" {
   ami = "ami-02f26adf094f51167"
   instance_type = "t2.micro"
   count = var.istest == true ? 1 : 0
}

resource "aws_instance" "prod" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.large"
   count = var.istest == false ? 3 : 0
}
```

### terraform.tfvars
```sh
#this is test environment 'true' is 'test', 'false' is 'production'
istest = false
```
