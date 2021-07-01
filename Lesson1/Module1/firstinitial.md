### Important Note

In every region has a different AMI ID.
The AMI ID's keeps on changing so make sure you use the latest AMI ID from the AWS console.

For this we use;
region "ap-southeast-1"
API id "ami-02f26adf094f51167" as 1Jul2021


### Documentation Referred:

https://registry.terraform.io/

https://registry.terraform.io/providers/hashicorp/aws/latest/docs

### first_init_ec2.tf

```sh
provider "aws" {
  region     = "ap-southeast-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

resource "aws_instance" "myec2" {
   ami = "ami-02f26adf094f51167"
   instance_type = "t2.micro"
}
```
### Commands:

```sh
terraform init
terraform plan
terraform apply
```
