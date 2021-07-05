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
----
----
#### Documentation Referred:

https://registry.terraform.io

#### AWS Provider

```sh
provider "aws" {}
terraform init
```

#### VMware vSphere Provider:

https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs

```sh
terraform {
  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
      version = "2.0.2"
    }
  }
}

provider "vsphere" {}
```
```sh
terraform init
```

#### GitHub Provider Terraform

https://registry.terraform.io/providers/integrations/github/latest/docs

#### Pre-Requisite

1. Make sure you create your GitHub account.
2. Create Personal Access Token


Code Used:

```sh

terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.3.2"
    }
  }
}

provider "github" {
  token = "PUT-YOUR-GITHUB-TOKEN-HERE"
}

resource "github_repository" "example" {
  name        = "udap-terraform-repo"

  visibility  = "private"

}
```
#### Initialize and Apply:
```sh
terraform init
terraform plan
terraform apply
```
