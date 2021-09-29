locals {
  binding = try(google_pubsub_subscription_iam_binding.binding[0], null)
  member  = try(google_pubsub_subscription_iam_member.member, null)

  iam_output = [local.binding, local.member]

  iam_output_index = var.authoritative ? 0 : 1
}

output "iam" {
  description = "All attributes of the created 'google_pubsub_subscription_iam_*' resource according to the mode."
  value       = local.iam_output[local.iam_output_index]
}
