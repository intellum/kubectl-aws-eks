# kubectl-aws-eks-action

Executes kubectl commands from GitHub actions

```
name: Your GHA
on:
  pull_request:
    types: [opened, synchronize]

jobs:
  your_job_name:
    runs-on: [self-hosted, ubuntu]
    steps:
      - name: Find QA environment
        id: find-env
        uses: intellum/kubectl-aws-eks@charlie-create-find-env-action
        env:
          AWS_REGION: us-east-2
          EKS_CLUSTER_NAME: qa-envs-1
          AWS_ACCESS_KEY_ID: ${{ inputs.aws_access_key_id }}
          AWS_SECRET_ACCESS_KEY: ${{ inputs.aws_secret_access_key }}
        with:
          command: kubectl get namespaces
```

## command can also be a file path

the filepath would be relative to the GitHub actions mounted docker volume work_dir

```
command: ./path/to/file.rb
```
