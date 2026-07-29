# ALPHATECH-IAC 🚀
Repositório de estudos em **Infraestrutura como Código (IaC)** utilizando **Terraform** e **Docker**.  
Aqui ficam organizadas todas as atividades práticas, desde criação de containers até o gerenciamento de infraestrutura via código.
---
## 📁 Estrutura do Repositório
```
ALPHATECH-IAC/
└── iac-lab/
    └── terraform/
        ├── main.tf                  # Configuração principal do Terraform
        └── .terraform.lock.hcl     # Lock file de versões dos providers
```
---
## 🛠️ Tecnologias Utilizadas
| Tecnologia | Descrição |
|---|---|
| [Terraform](https://www.terraform.io/) | Ferramenta de IaC para provisionamento de infraestrutura |
| [Docker](https://www.docker.com/) | Plataforma de containers |
| [kreuzwerker/docker](https://registry.terraform.io/providers/kreuzwerker/docker) | Provider Terraform para gerenciar recursos Docker |
---
## 📚 Conceitos
### O que é IaC?
Infraestrutura como Código (IaC) é a prática de gerenciar e provisionar infraestrutura através de arquivos de configuração, em vez de configurações manuais.  
**Nós descrevemos o resultado final. Não dizemos passo a passo como criar.**
### O que é um Provider?
Um Provider é um plugin que permite ao Terraform interagir com uma plataforma específica.
| Plataforma | Provider |
|---|---|
| Docker | `kreuzwerker/docker` |
| AWS | `aws` |
| Azure | `azurerm` |
| Google Cloud | `google` |
| Kubernetes | `kubernetes` |
---
## ⚡ Comandos Terraform
```bash
# Inicializa o projeto, baixa os providers e prepara o ambiente
terraform init
# Verifica se o arquivo de configuração possui erros de sintaxe
terraform validate
# Mostra o que o Terraform pretende fazer (sem executar)
terraform plan
# Aplica as mudanças e provisiona a infraestrutura
terraform apply
# Destrói toda a infraestrutura gerenciada pelo Terraform
terraform destroy
```
---
## 🐳 Comandos Docker Úteis
```bash
# Lista containers em execução
docker ps
# Lista todos os containers (incluindo parados)
docker ps -a
# Lista as imagens disponíveis localmente
docker images
# Remove um container (forçado)
docker rm -f <nome-do-container>
# Remove uma imagem
docker rmi <nome-da-imagem>
# Acessa o terminal de um container em execução
docker exec -it <nome-do-container> bash
```
---
## 📋 Atividades
### ✅ Atividade 01 — Container Ubuntu com Terraform
**Pasta:** `iac-lab/terraform/`
Provisionamento de um container Ubuntu 22.04 via Terraform + Docker provider.  
O Terraform gerencia o ciclo de vida completo: pull da imagem, criação e manutenção do container.
**Recursos criados:**
- `docker_image.ubuntu` — Imagem Ubuntu 22.04
- `docker_container.servidor` — Container `ubuntu-server` em execução contínua
---
## 🚀 Como Usar
**Pré-requisitos:**
- [Terraform](https://developer.hashicorp.com/terraform/downloads) instalado
- [Docker](https://www.docker.com/) instalado e rodando
```bash
# 1. Clone o repositório
git clone https://github.com/Thz081/ALPHATECH-IAC.git
# 2. Acesse a pasta da atividade
cd ALPHATECH-IAC/iac-lab/terraform
# 3. Inicialize o Terraform
terraform init
# 4. Verifique o plano
terraform plan
# 5. Aplique a infraestrutura
terraform apply
# 6. Confirme que o container está rodando
docker ps
```
---
> 📌 *Este repositório está em constante evolução. Novas atividades serão adicionadas ao longo do curso.*
