$WorkingDir = Convert-Path .
terragrunt apply "$WorkingDir\plan.tfplan"
