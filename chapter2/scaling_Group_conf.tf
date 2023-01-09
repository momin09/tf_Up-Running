resource "aws_launch_configuration" "example" {
    image_id        = "ami-0cb1d752d27600adb"
    instance_type   = "t2.micro"
    security_groups = [aws_security_group.instance.id]
    
}