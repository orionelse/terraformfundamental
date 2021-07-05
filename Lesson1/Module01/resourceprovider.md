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
