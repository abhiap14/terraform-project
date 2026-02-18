terraform {
  backend "s3" {
    bucket         = "my-terraform-state-abhishek12"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}
