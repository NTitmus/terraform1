config {
  format = "compact"
  plugin_dir = "~/.tflint.d/plugins"

  call_module_type = "none"
  force = false
  disabled_by_default = false
  
}

plugin "aws" {
  enabled = true
  version = "0.28.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
  #deep_check = true
}