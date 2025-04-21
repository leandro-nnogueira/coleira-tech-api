# 🐾 Coleira Tech API

API REST desenvolvida em Java com Spring Boot para monitoramento de localização de animais de estimação em tempo real. O sistema recebe dados de localização via rede GPRS, armazena em banco de dados PostgreSQL e disponibiliza endpoints para consulta.

## 🚀 Funcionalidades

- ✅ Receber dados de localização (latitude, longitude, data/hora, identificador do animal)
- ✅ Armazenar os dados em banco de dados
- ✅ Consultar a **última posição** de um animal
- ✅ Consultar o **histórico de posições** com filtro por data
- ✅ Relacionamento entre Dono, Pet e Coleira

## 🛠️ Tecnologias Utilizadas

- Java 17
- Spring Boot
- Spring Data JPA
- PostgreSQL
- Docker + Docker Compose
- Maven

## 📦 Estrutura do Projeto

```bash
coleira-tech-api/
├── src/
│   ├── main/
│   │   ├── java/com/coleiratech/coleira/tech/...
│   │   └── resources/
├── docker-compose.yml
├── pom.xml
└── README.md
```

## 🐳 Executando com Docker

Certifique-se de ter o Docker e o Docker Compose instalados. Em seguida:

```bash
docker-compose up
```

A API estará disponível em:  
📍 `http://localhost:8080`

O banco de dados PostgreSQL estará rodando em:  
📍 `localhost:5432` (usuário: `postgres`, senha: `123@postgres`)

## 🔗 Endpoints principais (exemplo)

- `POST /localizacao` – Enviar dados de localização
- `GET /localizacao/ultima/{idAnimal}` – Buscar última localização
- `GET /localizacao/{idAnimal}` - Listar todas as localizações de um anial

## 🧠 Como contribuir

1. Faça um fork do projeto
2. Crie uma branch com sua feature: `git checkout -b minha-feature`a
3. Faça commit das suas alterações: `git commit -m 'feat: minha nova feature'`
4. Faça push para a branch: `git push origin minha-feature`
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

Desenvolvido com 💙 por [Leandro Nogueira](https://github.com/leandro-nnogueira) e [Kaio Soares](https://github.com/kaiossoares)
