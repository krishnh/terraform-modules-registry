module "sns_topic" {
  source            = "../../terraform-modules/sns"
  name              = var.topic_name
  display_name      = var.display_name
  kms_master_key_id = var.kms_master_key_id
  subscriptions     = var.subscriptions
  additional_tags   = var.tags
}
