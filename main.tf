provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraformbuckettodayjune" {
  bucket = "terraformbuckettodayjune"
}
resource "aws_s3_bucket" "terraformbuckettodayjune2" {
  bucket = "terraformbuckettodayjune2"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraformbuckettodayjune"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}