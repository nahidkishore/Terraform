resource "aws_dynamodb_table" "my_app_table" {
  name         = "${var.my_env}-devops-demo-app-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "userID"
  attribute {
    name = "userID" // Partition key
    type = "S"      // type "S" means string 
    // "B" means binary, "N" means number 

  }
  tags = {
    Name = "${var.my_env}-devops-demo-app-table"
  }
}