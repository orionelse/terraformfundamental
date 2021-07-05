### Sample 'test.fmt.tf' not a good format

```sh
provider "aws" {
       region     = "ap-southeast-1"
  access_key          = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
  version = ">=2.10,<=2.30"
}

resource "aws_instance" "myec2" {
  ami           = "ami-02f26adf094f51167"
  instance_type = "t2.micro"
}
```

Command for Formatting

```sh
terraform fmt
```

## Result may looklike
```sh
provider "aws" {
  region          = "ap-southeast-1"
  access_key      = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key      = "PUT-YOUR-SECRET-KEY-HERE"
  version         = ">=2.10,<=2.30"
}

resource "aws_instance" "myec2" {
  ami           = "ami-02f26adf094f51167"
  instance_type = "t2.micro"
}
```
