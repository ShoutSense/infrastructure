resource "aws_instance" "ec2" {
  ami                         = "${var.amazon_machine_image}"
  instance_type               = "${var.aws_instance_type}"
  iam_instance_profile        = "${var.iam_instance_profile}"
  availability_zone           = "${var.aws_availability_zone}"
  monitoring                  = "${var.enable_monitoring}"
  vpc_security_group_ids      = ["${var.vpc_security_group_ids}"]
  subnet_id                   = "${var.vpc_subnet_id}"
  key_name                    = "${var.key_name}"
  private_ip                  = "${var.private_ip}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  tags                        = "${var.tags}"
}
