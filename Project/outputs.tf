resource "local_file" "AnsibleInventory" {
  content = templatefile("inventory.tmpl",
  {
    j_m_name = aws_instance.jenkins-main.tags.Name,
    j_m_eip = aws_eip.j-main-eip.public_ip,
    j_m_id = aws_instance.jenkins-main.id,
    j_b_name = aws_instance.jenkins-builder.tags.Name,
    j_b_eip = aws_eip.j-builder-eip.public_ip,
    j_b_id = aws_instance.jenkins-builder.id,
    web_name = aws_instance.web.tags.Name,
    web_eip = aws_eip.web-eip.public_ip,
    web_id = aws_instance.web.id,
    ec2_key_file = var.KEY_ANSIBLE

     }
  )
  filename = "hosts"
}