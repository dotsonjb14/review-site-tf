$WorkingDir = Convert-Path .
terragrunt plan -out "$WorkingDir\plan.tfplan"
