terraform {
  backend "s3" {
    bucket = ""
    key    = "state"
    region = ""
    dynamodb_table = ""
  }
}
