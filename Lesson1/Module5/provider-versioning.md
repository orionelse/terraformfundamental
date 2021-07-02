### Different Version Parameters used in document:
```sh
version    = "2.7"
version    = ">= 2.8"
version    = "<= 2.8"
version    = ">=2.10,<=2.30"
```

### Base Configuration - provider.versioning.tf

```sh
provider "aws" {
  region     = "ap-southeast-1"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
  version    = ">=2.10,<=2.30"
}

resource "aws_instance" "myec2" {
   ami = "ami-02f26adf094f51167"
   instance_type = "t2.micro"
}
```
