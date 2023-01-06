resource "aws_instance" "example" {
    ami = "ami-0cb1d752d27600adb"
    instance_type = "t2.micro"

    user_data = <<-EOF
                    #! /bin/bash
                    echo "Hello, world" > index.html
                    nohup busybox httpd -f -p 8080 &
                    EOF

    tags = {
        Name = "terraform-example"
    }
}