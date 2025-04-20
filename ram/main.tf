module "ram" {
  source          = "../../terraform-modules/ram"
  name            = var.resource_share_name
  resource_arns   = var.resource_arns
  principal_arns  = var.principal_arns
  tags            = var.tags
  required_tags   = var.required_tags
  additional_tags = var.additional_tags
}
