variable "nome" {
  type        = string
  description = "Nome da instancia"
  #default     = "WebServer" #esse valor será definido no root module como exemlo
}

variable "environment" {
  type        = string
  description = "Ambiente da instancia"
  default     = "dev"
}