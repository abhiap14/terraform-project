I built an AWS infrastructure using Terraform with remote S3 backend and DynamoDB locking.
I provision VPC, subnet, security groups, and EC2. I use dev and prod tfvars.
Jenkins automates terraform init, validate, plan, manual approval for prod, and apply.
# some imp command while conflicts
git add .gitignore
git rebase --continue
git push origin main --force-with-lease
