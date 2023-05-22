resource "local_file" "devops" {
  filename = "nahid_new.txt"
  content  = "Hey this is nahid"
}
/*
resource =block
random= provider
string= provider resource type
*/
resource "random_string" "devops_string" {
  length = 15

}
output "devops_string" {
  value = random_string.devops_string[*].result
  
}
