resource "aws_instance" "ec2_for_each" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  tags = {
   Name  = var.instance_name
   Owner = "pratyank.chauhan@cloudeq.com"
 }
 volume_tags = {
  Name  = var.instance_name
  Owner = "pratyank.chauhan@cloudeq.com"
 }

}