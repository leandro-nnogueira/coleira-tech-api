<p align="center">
  <img src="assets/ColeiraTech.png" alt="ColeiraTech Logo" width="600"/>
</p>

# 🐾 Coleira Tech – API de Monitoramento para Pets

O **Coleira Tech** é um sistema de rastreamento em tempo real para animais de estimação, desenvolvido como parte de um projeto acadêmico. Seu principal objetivo é reduzir o número de animais perdidos, fornecendo uma solução acessível, confiável e prática para tutores e organizações de proteção animal.

---

## 📦 Tecnologias Utilizadas

- **Java 21**
- **Spring Boot**
- **PostgreSQL**
- **Docker & Docker Compose**
- **Módulo A9G (GPS + GPRS)** – para coleta e envio dos dados de localização
- **HTTP POST** – para envio dos dados para a API

---

## ⚙️ Funcionalidades

- 📍 **Receber localização do pet via requisição POST**
- 🗃️ **Armazenar dados em banco de dados PostgreSQL**
- 🕐 **Registrar data e hora da localização**
- 🔍 **Buscar a última posição de um pet**
- 📊 **Consultar histórico de localizações por animal e por data**

---

## 🚀 Como executar localmente com Docker

### Pré-requisitos
- Docker e Docker Compose instalados

### 1. Clone o repositório
```bash
git clone https://github.com/leandro-nnogueira/coleira-tech-api.git
cd coleira-tech-api
```

### 2. Suba os containers
```bash
docker-compose up --build
```

A aplicação estará disponível em `http://localhost:8080`.

---

## 📬 Endpoints principais

### POST `/localizacao`
Registra a localização de um animal.

**Body (JSON):**
```json
{
  "latitude": -23.561234,
  "longitude": -46.654321,
  "identificadorAnimal": "123e4567-e89b-12d3-a456-426614174000"
}
```

### GET `/localizacao/ultima/{identificadorAnimal}`
Retorna a última localização do animal.

### GET `/localizacao/historico/{identificadorAnimal}`
Retorna todo o histórico de localizações do animal.

---

## 🐾 Sobre o projeto

Esse projeto foi desenvolvido por estudantes como parte de um **projeto integrador** com foco em soluções tecnológicas aplicadas à proteção animal. O sistema está em constante desenvolvimento e aberto a sugestões e melhorias.

---

## 📄 Licença

Este projeto está licenciado sob a **MIT License** – veja o arquivo [LICENSE](LICENSE) para mais detalhes.
