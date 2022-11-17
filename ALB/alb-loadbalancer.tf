module "vpcnew" {
  source = "../EC2_VPC"
}
module "privateinstance" {
  source = "../EC2_VPC"
}

module "alb" {
    depends_on = [ module.vpcnew]
  source  = "terraform-aws-modules/alb/aws"
  version = "8.1.0"
  name = "my-public-application-terraform"

  load_balancer_type = "application"

  vpc_id             = module.vpcnew.vpc_id
  subnets            = [module.vpcnew.public_subnets[0], module.vpcnew.public_subnets[1]]
  security_groups    = [module.alb-public-security-group.security_group_id]
  enable_http2 = true


  

  target_groups = [
    {
      name_prefix      = "app1-"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
      health_check = {
        enabled             = true
        interval            = 10
        path                = "/index.html"
        port                = "traffic-port"
        healthy_threshold   = 3
        unhealthy_threshold = 3
        timeout             = 6
        protocol            = "HTTP"
        matcher             = "200-399"
        }
        protocol_version = "HTTP1"
      targets = {
        my_target_1 = {
          target_id = module.privateinstance.id
          port = 80
        }
      }
    }
    
  ]

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
    
  ]

  http_tcp_listener_rules = [
    {
      http_tcp_listener_index = 0
      priority                = 1
      actions = [{
        type         = "forward"
        target_group_index= 0
        
      }]
      conditions = [{
        path_patterns = ["/*"]
      }]
    }
    
  ]


  

  tags = {
    Environment = "Dev"
}
}