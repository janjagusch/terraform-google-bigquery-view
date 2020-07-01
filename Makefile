.PHONY: format_terraform
format_terraform:
	terraform fmt

.PHONY: lint_terraform
lint_terraform:
	terraform fmt --check

.PHONY: validate_terraform
validate_terraform:
	terraform validate
