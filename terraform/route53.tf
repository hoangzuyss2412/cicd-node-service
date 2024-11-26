# Fetch the existing Hosted Zone for cab432.com
data "aws_route53_zone" "cab432_zone" {
    name = "cab432.com"
}

# Create an A record to point to the EC2 instance's public IP
resource "aws_route53_record" "ec2_domain_record" {
    zone_id = data.aws_route53_zone.cab432_zone.zone_id
    type = "A"
    name = "duy.cab432.com"
    ttl = 300
    records = [aws_instance.node_app.public_ip]

    # Ensure the instance is running and has a public IP before creating the record
    depends_on = [ 
        aws_instance.node_app,
        aws_ec2_instance_state.node_app_state
    ]
}