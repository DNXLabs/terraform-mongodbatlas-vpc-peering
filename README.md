# terraform-mongodbatlas-vpc-peering

[![Lint Status](https://github.com/DNXLabs/terraform-aws-template/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-mongodbatlas-vpc-peering/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-template)](https://github.com/DNXLabs/terraform-mongodbatlas-vpc-peering/blob/master/LICENSE)

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| mongodbatlas | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| atlas\_cidr\_block | CIDR block of the MongoDB | `string` | n/a | yes |
| atlas\_project\_id | ID of the MongoDB Atlas project | `string` | n/a | yes |
| atlas\_region | Region of the Atlas MongoDB VPC | `string` | n/a | yes |
| target\_account\_id | ID of the target AWS account | `string` | n/a | yes |
| target\_cidr\_block | CIDR block of the target AWS VPC | `string` | n/a | yes |
| target\_region\_name | Name of the target region | `string` | n/a | yes |
| target\_vpc\_id | ID of the target AWS VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| vpc\_peering\_id | n/a |

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-mongodbatlas-vpc-peering/blob/master/LICENSE) for full details.
