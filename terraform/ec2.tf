resource "aws_instance" "node_app" {
    ami = "ami-001f2488b35ca8aad"   #
    instance_type = var.instance_type
    iam_instance_profile = var.instance_profile
    subnet_id = var.ec2_subnet_id
    vpc_security_group_ids = [aws_security_group.node_app_sg.id]

    key_name = var.key_pair_name

    instance_initiated_shutdown_behavior = "terminate"
    
    tags = {
        "Name"         = "Node service application" 
        "qut-username" = "n11226048@qut.edu.au"
        "purpose"      = "practical"
    }
}

# Always make sure the instance of node service is running
resource "aws_ec2_instance_state" "node_app_state" {
    instance_id = aws_instance.node_app.id
    state = "running"
}