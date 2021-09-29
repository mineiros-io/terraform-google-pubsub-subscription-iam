# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED VARIABLES
# These variables must be set when using this module.
# ---------------------------------------------------------------------------------------------------------------------

variable "subscription" {
  description = "(Required) The subscription to apply the IAM role to."
  type        = string
}

variable "role" {
  description = "(Required) The role that should be applied. Note that custom roles must be of the format '[projects|organizations]/{parent-name}/roles/{role-name}'."
  type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL VARIABLES
# These variables have defaults, but may be overridden.
# ---------------------------------------------------------------------------------------------------------------------

variable "project" {
  description = "(Optional) The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "members" {
  type        = set(string)
  description = "(Optional) Identities that will be granted the privilege in role. Each entry can have one of the following values: 'allUsers', 'allAuthenticatedUsers', 'serviceAccount:{emailid}', 'group:{emailid}', 'domain:{domain}'."
  default     = []
}

variable "authoritative" {
  description = "(Optional) Whether to exclusively set (authoritative mode) or add (non-authoritative/additive mode) members to the role."
  type        = bool
  default     = true
}

# ------------------------------------------------------------------------------
# MODULE CONFIGURATION PARAMETERS
# These variables are used to configure the module.
# ------------------------------------------------------------------------------

variable "module_enabled" {
  type        = bool
  description = "(Optional) Whether to create resources within the module or not. Default is 'true'."
  default     = true
}

variable "module_depends_on" {
  type        = any
  description = "(Optional) A list of external resources the module depends_on. Default is '[]'."
  default     = []
}
