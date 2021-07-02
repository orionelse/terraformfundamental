## This snippet for the Terraform Variables document.
## in 'resource' section in 'varsdemo.tf' are reference to 'variable' section in 'variable.tf'

### varsdemo.tf
```sh
resource "aws_security_group" "var_demo" {
  name        = "orion-variables"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port   = 53
    to_port     = 53
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }
}
```
### variables.tf

```sh
variable "vpn_ip" {
  default = "116.50.30.50/32"
}
```
