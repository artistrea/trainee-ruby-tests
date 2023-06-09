# Propósito:

Permitir criar e rodar testes sem saber muito do que está acontecendo por baixo dos panos.

## Arquivos relevantes para o propósito:

- `app/models/calculator.rb`
- `spec/models/calculator_spec.rb`

## Como rodar

### Versão do ruby

Pode ver na gemfile que é necessário usar o ruby 3.0.0, então se não tiver, instale.

```bash
rvm install 3.0.0
```

E verifique se está usando a versão correta:

```bash
rvm current
```

Se não tiver, pode trocar de versão com o comando:

```bash
rvm use 3.0.0
```

### Instalando as dependências

Verifique que está na pasta do projeto e rode o comando:

```bash
bundle install
```

### Criando o banco de dados

Por causa da maneira que fiz esse setup, o que a gente usa de verdade nos projetos, é necessário gerar o banco de dados antes de rodar os testes. Usamos postgres, então é necessário ter ele instalado e rodando.

```bash
rails db:create
```

Além de ter o banco de dados criado, é necessário rodar atualizar ele com nossa model Calculator (e quaisquer outras migrações pendentes):

```bash
rails db:migrate
```

### Rodando os testes

Finalmente, para rodar os testes, basta rodar o comando:

```bash
rspec
```

Esse comando roda todos os testes do projeto, mas se quiser rodar apenas um arquivo, pode usar o comando:

```bash
rspec spec/calculator_spec.rb
```

Ou se quiser rodar apenas um teste específico, pode usar o comando:

```bash
rspec spec/calculator_spec.rb:5
```

Onde o número 5 é o número da linha do teste que quer rodar.

## Easter egg: Como esse repo foi criado

Vocês ainda vão ver isso em outra aula, mas se já quiserem adiantar. Esse repositório foi criado com a sequência de comandos:

```bash
rvm use 3.0.0
rails _7.0.0_ new trainee_TDD --api --database='postgresql'
cd trainee_TDD
# Adicionar as gems do rspec no gemfile
bundle install
rails g rspec:install
# Adicionar a gem do factory bot no gemfile
bundle install
# Alterar o spec_helper.rb e config do rspec para incluir o factory bot

rails g model Calculator
```

E o resto é história. Vejam melhor as alterações de código no histórico de commits pelo github.
