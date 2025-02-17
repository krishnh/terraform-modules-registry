module "sns_topic" {
  source                   = "git::https://github.com/krishnh/terraform-modules.git//sns"
  name                     = var.topic_name
  display_name             = var.display_name
  kms_master_key_id        = var.kms_master_key_id
  access_policy_statements = var.access_policy_statements
  subscriptions            = var.subscriptions
  tags                     = var.tags
}
