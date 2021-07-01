### Important Note
Ensure you are destroy the right target.

Check
1. Which environment : DEV, SIT, PROD
2. Component name


### Step1
### Create new EC2 for destroy practices
### (ignore this step if you run on Module1)
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
resource "aws_instance" "mfecudapec2" {
   ami = "ami-02f26adf094f51167"
   instance_type = "t2.micro"
}
```

```sh
terraform init
terraform plan
terraform apply
```

### Step2
### Destroy EC2 are created
### Destroy all resources

```sh
terraform destroy
```

### Destroy specific resource
```sh
terraform destroy -target aws_instance.mfecudapec2
```


### Clean up after this module
### Destroy all resources
```sh
terraform destroy
```
