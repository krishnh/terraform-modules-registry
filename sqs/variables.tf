################################################################################
# Queue Configuration
################################################################################

variable "queue_name" {
  type        = string
  description = "The name of the queue"

  validation {
    condition     = var.queue_name != null ? length(var.queue_name) > 0 && length(var.queue_name) <= 80 : false
    error_message = "The name of the queue must be between 1 and 80 characters in length"
  }
}

variable "kms_master_key_id" {
  description = "The ARN of an AWS-managed or customer master key (CMK) for Amazon SNS"
  type        = string
  default     = null

  validation {
    condition     = var.kms_master_key_id != null
    error_message = "The KMS master key ID must be provided"
  }
}

################################################################################
# Tagging
################################################################################

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource"

  // tags should not start with 'aws:' or 'bank:'
  validation {
    condition     = alltrue([for key, value in var.tags : !can(regex("^aws:.*|^bank:.*", key))])
    error_message = "Tags starting with 'aws:' or 'bank:' are reserved for internal use"
  }
}

