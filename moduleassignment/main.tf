module "vpc" {
  source      = "../approach/VPC"
  vpc_cidr    = "10.0.0.0/16"
  tenancy     = "default"
  vpc_id      = module.vpc.vpc_id
  subnet_cidr = "10.0.1.0/24"
}


module "ec2" {
  source = "../approach/EC2"
  ami_id        = "ami-0bd3f43f107376d6b"
  for_each      = toset(var.instance_name)
  instance_name = each.value


}

module "internet_gateway" {
  source   = "../approach/VPC"
  vpc_id   = module.vpc.vpc_id
  vpc_cidr = "10.0.0.0/16"

}

module "aws_s3_bucket" {
  source      = "../approach/S3"
  bucket_name = "pratyank-s3"

}