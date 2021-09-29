# Conversão peso
> Repositório dedicado ao Desafio 1 da **Iniciativa Kubernetes**
---
## Instruções
```
# Clone o repositório
git clone https://github.com/CarlosSMA/conversao-temperatura
cd ./conversao-temperatura

# Construa a imagem
docker image build -t {Nome_Usuario}/conversao-temperatura:runtime

# Rode o container
docker container run --name runtime_dotnet {Nome_Usuario}/conversao-temperatura:runtime

# Verifique o IP com:
docker container inspect runtime_dotnet

# Acesse a aplicação pela porta 80
```