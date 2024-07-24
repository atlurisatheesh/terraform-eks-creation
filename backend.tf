terraform {
  backend "s3" {
    bucket         = "dev-terraform-modules/tfmodules/"
    dynamodb_table = "terraform-state-lock-dynamo"
    key            = "terraform-aws-eks-workshop.tfstate"
    region         = "us-west-1"
    encrypt        = true
  }
}