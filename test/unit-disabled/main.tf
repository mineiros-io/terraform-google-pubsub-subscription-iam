module "test" {
  source = "../.."

  module_enabled = false

  # add all required arguments

  subscription = "unit-disabled"

  role = "roles/viewer"

  # add all optional arguments that create additional/extended resources

  members = ["user:member@example.com"]

  # add most/all other optional arguments
}

module "test2" {
  source = "../.."

  module_enabled = false

  # add all required arguments

  subscription = "unit-disabled"

  role = "roles/viewer"

  # add all optional arguments that create additional/extended resources

  authoritative = false
  members       = ["user:member@example.com"]

  # add most/all other optional arguments
}

module "test3" {
  source = "../.."

  module_enabled = false

  # add all required arguments

  subscription = "unit-disabled"

  policy_bindings = [
    {
      role    = "roles/viewer"
      members = ["user:member@example.com"]
    }
  ]
  # add all optional arguments that create additional/extended resources

  # add most/all other optional arguments
}
