### Important Note
Playing on Module 1 and Module2 then investigate terraform's state file.

Terraform state file place on your local working directory;

```sh
ls -la
vi ./terraform.tfstate
```

```json
## 'terraform.tfstate' sample
{
  "version": 4,
  "terraform_version": "0.15.5",
  "serial": 1,
  "lineage": "d5f215c5-796b-4f64-03c5-2e5d82bbafef",
  "outputs": {},
  "resources": [
    {
      "mode": "managed",
      "type": "aws_instance",
      "name": "myec2",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 1,
          "attributes": {
            "ami": "ami-02f26adf094f51167",
            "arn": "arn:aws:ec2:ap-southeast-1:726820066407:instance/i-0f70efaf77646f873",
            "associate_public_ip_address": true,
            "availability_zone": "ap-southeast-1a",
            "capacity_reservation_specification": [
              {
                "capacity_reservation_preference": "open",
                "capacity_reservation_target": []
              }
            ],
```
