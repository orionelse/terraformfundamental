
### Default File in sample is 'myec2.tf'

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
### variables.tf
```sh
variable "instancetype" {
  default = "t2.micro"
}
```
### custom.tfvars
```sh
instancetype="t2.large"
```

### terraform.tfvars
```sh
instancetype="t2.large"
```

### CLI Commands

```sh
terraform plan -var="instancetype=t2.small"
terraform plan -var-file="custom.tfvars"
```

### Environment Variables:

### Windows Approach:
```sh
setx TF_VAR_instancetype t2.large
```
### Unix Approach
```sh
export TF_VAR_instancetype="t2.nano"
echo $TF_VAR
```
