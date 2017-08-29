
resource "aws_route53_zone" "cmd_io" {
  name = "cmd.io"
  comment = "${var._comment}"
}

resource "aws_route53_record" "www_cmd_io" {
  zone_id = "${aws_route53_zone.cmd_io.zone_id}"
  name = "www.cmd.io"
  type = "A"
  alias {
    name = "d24sdw7s6lpyet.cloudfront.net."
    zone_id = "Z2FDTNDATAQYW2"
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "alpha_cmd_io" {
  zone_id = "${aws_route53_zone.cmd_io.zone_id}"
  name = "alpha.cmd.io"
  type = "CNAME"
  ttl = "300"
  records = ["ae298a553083611e7a3eb0a59467cbd8-872746419.us-east-1.elb.amazonaws.com."]
}

resource "aws_route53_record" "beta_cmd_io" {
  zone_id = "${aws_route53_zone.cmd_io.zone_id}"
  name = "beta.cmd.io"
  type = "A"
  ttl = "300"
  records = ["35.194.44.84"]
}

resource "aws_route53_record" "cmd_io" {
  zone_id = "${aws_route53_zone.cmd_io.zone_id}"
  name = "cmd.io"
  type = "A"
  alias {
    name = "d24sdw7s6lpyet.cloudfront.net."
    zone_id = "Z2FDTNDATAQYW2"
    evaluate_target_health = false
  }
}