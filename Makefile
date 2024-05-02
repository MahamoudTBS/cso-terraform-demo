AWS_ACCOUNT_ID := 767397971970
AWS_REGION := ca-central-1
TF_MODULE_DIR := ./terragrunt/env/dev

.PHONY: apply fmt init plan setup

apply: init
	@terragrunt apply --terragrunt-working-dir=${TF_MODULE_DIR}
	
fmt:
	@terragrunt fmt --terragrunt-working-dir=${TF_MODULE_DIR}

init:
	@terragrunt init --terragrunt-working-dir=${TF_MODULE_DIR}

plan: init
	@terragrunt plan --terragrunt-working-dir=${TF_MODULE_DIR}

setup: init
	terragrunt apply \
		--terragrunt-working-dir=${TF_MODULE_DIR}