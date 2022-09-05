# Basic example

```hcl
module "this_ad_group" {
  source  = "../../"
  context = module.this.context

  name = "administrators"
}
```

## Usage

```shell
terraform init
terraform plan -out tfplan
terraform apply tfplan
```
