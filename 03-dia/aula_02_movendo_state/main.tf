module "projetoa" {
  source = "./instancias"
  nome = "new-instance-28-02-25" 
}

moved {
  from = module.projetoa.aws_instance.web
  to = module.projetoa.aws_instance.this
}