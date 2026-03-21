resource "aws_launch_template" "app_lt" {
  name_prefix   = "app-template"
  image_id      = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"

  iam_instance_profile {
    name = aws_iam_instance_profile.ec2_profile.name
  }

  user_data = base64encode(<<-EOF
              #!/bin/bash
              yum update -y
              yum install docker -y
              service docker start

              aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin <ECR_URL>

              docker pull <ECR_URL>:latest
              docker run -d -p 8080:8080 <224806504782.dkr.ecr.ap-south-1.amazonaws.com/my-app>:latest
              EOF
  )
}

resource "aws_autoscaling_group" "app_asg" {
  desired_capacity    = 1
  max_size            = 2
  min_size            = 1

  vpc_zone_identifier = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]

  launch_template {
    id      = aws_launch_template.app_lt.id
    version = "$Latest"
  }
}