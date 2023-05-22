resource "aws_dynamodb_table" "my_state_bucket" {
  name         = var.state_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID" // Partition key
    type = "S"      // type "S" means string 
    // "B" means binary, "N" means number 

  }
  tags = {
    Name = var.state_table_name
  }
}