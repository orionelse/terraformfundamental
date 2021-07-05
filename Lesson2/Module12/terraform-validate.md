### this sample put some error for validating results

```sh
provider "aws" {
  region     = "ap-southeast-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

resource "aws_instance" "myec2" {
  ami           = "ami-02f26adf094f51167"
  instance_type = var.instancetype
  sky = "blue"
}
```

### Command for Validating

```sh
terraform validate
```
