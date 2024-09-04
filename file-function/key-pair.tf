resource "aws_key_pair" "testing_key" {
  key_name   = "terrafrom-demo"
  public_key = file("practice-key.pub")
}