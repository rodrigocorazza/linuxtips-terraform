resource "aws_dynamodb_table" "example" {
  name             = "descomplicando-terraform-turma-2024"
  hash_key         = "LockID"
  read_capacity = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}

#Para usar o Locking State com DynamoDB usando o "dynamodb_table", temos que ter uma partition key chamada "LockID" 
#do tipo "S" (String)
#billing_mode default é PROVISIONED