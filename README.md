# AWS ECR Delete old images

This repo is a custom action secrets, this can delete old images from AWS ECR

## Parameters
  - repo-name: The AWS ECR Name
  - qtd-images: How many docker images will be left in the repository

## How to use
```yaml
- uses: LeiaInc/devops-delete-old-aws-ecr-images@v1
  with:
    repo-name: ecr-name-service
    qtd-images: 12
```

Obs: It's necessary to pass the AWS Access key and AWS Secret Key to environment.

```yaml
- uses: aws-actions/configure-aws-credentials@v1
  with:
    aws-access-key-id: ...
    aws-secret-access-key: ...
    aws-region: ...
- uses: LeiaInc/devops-delete-old-aws-ecr-images@v1
  with:
    repo-name: ecr-name-service
    qtd-images: 12
```
