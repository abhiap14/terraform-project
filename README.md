I built an AWS infrastructure using Terraform with remote S3 backend and DynamoDB locking.
I provision VPC, subnet, security groups, and EC2. I use dev and prod tfvars.
Jenkins automates terraform init, validate, plan, manual approval for prod, and apply.
terraform-project/


│
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── eks/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── envs/
│   ├── dev/
│   │   ├── main.tf
│   │   └── terraform.tfvars
│   │
│   └── prod/
│       ├── main.tf
│       └── terraform.tfvars
│
└── backend.tf

In Terraform, a child module exposes values using output blocks. The root module accesses them using module.<module_name>.<output_name> and can pass them to other modules as inputs.

