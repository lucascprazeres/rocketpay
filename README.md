<img src=".github/cover.png"/>

<h1 align="center">RocketPay - trila Elixir</h1>

## 🔍 Sobre o projeto

Esse é um do projetos propostos durante a quarta edição da [Next Level Week](https://nextlevelweek.com/inscricao/4). A proposta do **RocketPay** é desenvolver um meio de pagamento semelhante ao encontrado na plataforma PicPay, treinando conceitos de **programação funcional**, com a linguagem **Elixir** e com o framework web **Phoenix**

## 🤯 Tecnoligias utilizadas

- [Elixir - v1.11.4](https://elixir-lang.org/install.html)
- [Phoenix - v1.5.7](https://www.phoenixframework.org/)
- [Postgres database](https://www.postgresql.org/)

## 🤔 Requisitos

Certifique-se de ter instalado o Elixir e o Phoenix framework em sua máquina (acesse os links acima). Além disso, é preciso ter um banco postgres ativo. Você pode instalá-lo **diretamente em sua máquina** ou utilizar uma **imagem docker**.

Com o banco de dados rodando, configure suas credenciais nos arquivos **config/dev.esx** **config/test.esx**

## 🚀 Rodando a aplicação

**Para clonar o projeto para a sua máquina**

```bash
git clone https://github.com/lucascprazeres/rocketpay

cd rocketpay
```

**Para iniciar o seu servidor Phoenix:**

```bash
# instale as dependências
mix deps.get

# Crie e migre o banco de dados
mix ecto.setup

# Rode o servidor
mix phx.server
```
*Você está pronto para usar a aplicação!* 🥳

A url base para acessar a API é [`localhost:4000`](http://localhost:4000).

## Rotas

...Em breve...

## 📝 Licença

Esse projeto se encontra sob a licença **MIT**. Para mais informações, acesse o arquivo [**LICENSE**](LICENSE).

<hr />

<h4 align=center>Feito com 💜 por <a href="https://www.linkedin.com/in/lucas-prazeres/">Lucas Prazeres</a></h4>