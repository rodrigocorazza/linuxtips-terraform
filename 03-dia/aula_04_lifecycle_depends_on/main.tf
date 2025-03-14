module "projetoa" {
  source = "./instancias"
  nome = "projetoA" #definindo o valor da variável nome do módulo instancias
  environment = "Develop"
  ami = "ami-0884d2865dbe9de4b"
  ami_bd = "ami-0cb91c7de36eed2cb"
}
