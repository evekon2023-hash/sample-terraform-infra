# sample-terraform-infra

A small, realistic Terraform repo that our Strands + Bedrock AgentCore agent targets.

## What's here

| File | Role |
|------|------|
| `main.tf` | The infrastructure: an S3 bucket + versioning, driven by variables. |
| `variables.tf` | The **field schema**. Variables without a `default` are required inputs the agent must collect. |
| `terraform.tfvars` | The values. The agent generates this from your answers and opens a PR with it. |

## The agent's job

1. Read `variables.tf` to learn which fields are required.
2. Interview the user for any missing field values.
3. Render `terraform.tfvars` from the collected values.
4. Open a pull request on this repo with the change.
