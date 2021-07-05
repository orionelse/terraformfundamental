### this sample use zipmap for iamuser map with arns

```sh
provider "aws" {
  region     = "ap-southeast-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 3
  path = "/system/"
}

output "arns" {
	value = aws_iam_user.lb[*].arn
}

output "name" {
	value = aws_iam_user.lb[*].name
}

output "combined_zipmap"{
	value = zipmap(aws_iam_user.lb[*].name, aws_iam_user.lb[*].arn)
}
```

### Output looklike
```sh
Changes to Outputs:
  - arns            = [
      - "arn:aws:iam::xxx:user/system/iamuser.0",
      - "arn:aws:iam::xxx:user/system/iamuser.1",
      - "arn:aws:iam::xxx:user/system/iamuser.2",
    ] -> null
    - name            = [
        - "iamuser.0",
        - "iamuser.1",
        - "iamuser.2",
      ] -> null
  - combined_zipmap = {
      - iamuser.0 = "arn:aws:iam::xxx:user/system/iamuser.0"
      - iamuser.1 = "arn:aws:iam::xxx:user/system/iamuser.1"
      - iamuser.2 = "arn:aws:iam::xxx:user/system/iamuser.2"
    } -> null
```
