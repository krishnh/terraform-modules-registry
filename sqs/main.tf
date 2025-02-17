module "sns_topic" {
  source            = "../../terraform-modules/sqs"
  name              = var.queue_name
  kms_master_key_id = var.kms_master_key_id
  additional_tags   = var.tags
}
