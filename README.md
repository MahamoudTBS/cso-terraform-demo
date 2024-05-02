# cso terraform demo
Common API Gateway for GC Credentials
## Setup
Easiest way to get started is with a [VS Code devcontainer](https://code.visualstudio.com/docs/devcontainers/tutorial) or [GitHub Codespace](https://github.com/features/codespaces) as it has the tools you'll need installed.

1. Set values in `./terragrunt/env/dev/env_vars.hcl`.
1. Set your AWS account ID and region in the `Makefile`.
1. Run the following:
```bash
make setup