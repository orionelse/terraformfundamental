### Sample code for Terraform State Management
Required S3 bucket name and path/file.tfstate

```sh
provider "aws" {
  region  = "ap-southeast-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

resource "aws_instance" "myec2" {
  ami           = "ami-02f26adf094f51167"
  instance_type = "t2.micro"
}

resource "aws_iam_user" "lb" {
  name = "loadbalancer"
  path = "/system/"
}

terraform {
  backend "s3" {
    bucket = "<YOUR-S3-BUCKET-NAME>"
    key    = "<folder>/remotedemo.tfstate"
    region = "ap-southeast-1"
    access_key = "PUT-YOUR-ACCESS-KEY-HERE"
    secret_key = "PUT-YOUR-SECRET-KEY-HERE"
  }
}
```

### State Management Commands:

#### List the Resource with State File:
```sh
terraform state list
```
#### Rename Resource within Terraform State
1. Change the local name of EC2 resource from "webapp" to "myec2".
2. Run terraform plan to see the changes. It should destroy and recreate the EC2 instance.
3. Change the local name of EC2 within the terraform state file with following command:

```sh
terraform state mv aws_instance.myec2 aws_instance.webapp
```
#### Pull Current State file
```sh
terraform state pull
```
#### Remove Items from State file
```sh
terraform state rm aws_instance.myec2
```
#### Show Attributes of Resource from state file
```sh
terraform state show aws_iam_user.lb
```
