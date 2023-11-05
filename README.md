# Terraform Lambda

This project demonstrates how to deploy an AWS Lambda function written in TypeScript using Terraform.

## Tech used
AWS, Typescript, Terraform

## Prerequisites
Before you begin, ensure you have the following prerequisites:

Node.js and npm installed on your local machine.
Terraform CLI installed on your local machine.
AWS account credentials properly configured.

## Getting Started

1. Navigate to the my-lambda directory (`./src/my-lambda`) and Build the Lambda function code : 

```bash
npm install
npm run build
```


2. Initialize Terraform in the terraform directory (`./terraform`):

```bash
terraform init
```

4. Review the Terraform configuration in the terraform directory, including main.tf, variables.tf, and outputs.tf, to ensure it matches your desired AWS setup.

5. Plan the Terraform changes:
```bash
terraform plan
```

6. Apply the Terraform changes to create the Lambda function and associated resources:
```bash
terraform apply
```


7. After successfully applying Terraform, you can invoke the Lambda function using the AWS Lambda console or the AWS CLI.


8. Clean Up: To clean up and delete the resources created by Terraform, run the following command in the terraform directory (`./terraform`):

```bash
terraform destroy
```
