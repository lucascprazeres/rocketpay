<img src=".github/nlw-banner.png"/>

<h1 align="center">RocketPay - trilha Elixir</h1>

## 🔍 Sobre o projeto

Esse é um do projetos propostos durante a quarta edição da [Next Level Week](https://nextlevelweek.com/inscricao/4). A proposta do **RocketPay** é desenvolver um meio de pagamento semelhante ao encontrado na plataforma PicPay, treinando conceitos de **programação funcional**, com a linguagem **Elixir** e com o framework web **Phoenix**

## 🤯 Tecnoligias utilizadas

* [Elixir - v1.11.4](https://elixir-lang.org/install.html)
* [Phoenix - v1.5.7](https://www.phoenixframework.org/)
* [Postgres database](https://www.postgresql.org/)

## 🤔 Requisitos

Certifique-se de ter instalado o Elixir e o Phoenix framework em sua máquina (acesse os links acima). Além disso, é preciso ter um banco postgres ativo. Você pode instalá-lo **diretamente em sua máquina** ou utilizar uma **imagem docker**.

Com o banco de dados rodando, configure suas credenciais nos arquivos **config/dev.esx** **config/test.esx**

## 🚀 Rodando a aplicação

**Para clonar o projeto para a sua máquina**

``` bash
git clone https://github.com/lucascprazeres/rocketpay

cd rocketpay
```

**Para iniciar o seu servidor Phoenix:**

``` bash
# instale as dependências
mix deps.get

# Crie e migre o banco de dados
mix ecto.setup

# Rode o servidor
mix phx.server
```

*Você está pronto para usar a aplicação!* 🥳

A url base para acessar a API é [ `localhost:4000` ](http://localhost:4000).

## Rotas da aplicação

**A baseURL para as requisições em modo de desenvolvimento é *http://localhost:4000/api***

### POST: /users

**Corpo da requisição (JSON)**

``` json
{
  "name": "john doe",
	"email": "johndoe@email.com",
	"nickname": "jdoe",
	"password": "password",
	"age": 19
}
```

**Resposta (JSON)**

```json
{
  "message": "User created",
  "user": {
    "account": {
      "balance": "0.00",
      "id": "2ec3cab8-a789-4ae8-ac02-15f93b1b8391"
    },
    "id": "14f6d5cc-36ce-45aa-ba6f-570f0ddf7498",
    "name": "john doe",
    "nickname": "jdoe"
  }
}
```

### POST: /accounts/:account_id/deposit

**Corpo da requisição (JSON)**

``` json
{
  "value": "100"
}
```

**Resposta (JSON)**

```json
{
  "account": {
    "balance": "100.00",
    "id": "2ec3cab8-a789-4ae8-ac02-15f93b1b8391"
  },
  "message": "Balance changed sucessfuly"
}
```

### POST: /accounts/:account_id/withdraw

**Corpo da requisição (JSON)**

``` json
{
  "value": "100"
}
```

**Resposta (JSON)**

```json
{
  "account": {
    "balance": "0.00",
    "id": "2ec3cab8-a789-4ae8-ac02-15f93b1b8391"
  },
  "message": "Balance changed sucessfuly"
}
```

### POST: /accounts/transactions

**Corpo da requisição (JSON)**

``` json
{
  "from": "withdraw_account_id",
  "to": "deposit_account_id",
  "value": "50.00"
}
```

**Resposta (JSON)**

```json
{
  "message": "Transaction done sucessfuly",
  "transaction": {
    "from_account": {
      "balance": "350.00",
      "id": "withdraw_account_id"
    },
    "to_account": {
      "balance": "199.00",
      "id": "deposit_account_id"
    }
  }
}
```

## 📝 Licença

Esse projeto se encontra sob a licença **MIT**. Para mais informações, acesse o arquivo [**LICENSE**](LICENSE).

<hr />

<h4 align=center>Feito com 💜 por <a href="https://www.linkedin.com/in/lucas-prazeres/">Lucas Prazeres</a></h4>
