module "this_ad_group" {
  source  = "../../"
  context = module.this.context

  name = "administrators"
}
