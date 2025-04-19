terraform {
    backend "s3" {
        bucket = "terraforms3devtesttt"
        key = "terraform.tfstate"
        region = "eu-north-1"
      
    }
  
}