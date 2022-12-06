# Projeto de automatização de WEB e MOBILE com Robotframework construído no Robocamp - QAcademy

## 🔖 Requisitos funcionais

## Suite - Login - 06 tests cases


| Campos   | Descrição                             | Tipo     | Obrigatório |
| ------   | :------------------------------------ | -------- | ----------- |
| E-mail   | E-mail do usuário                     | Email    | Sim         |
| Password | Password do usuário                   | Password | Sim         |

### Test case 01 - Login do administrador

- [X] Administrador deve acessar o portal de gestão de academias.

   - Massa de teste: admin@smartbit.com / qacademy


### Test case 02 - Email não cadastrado

- [X] Usuário não terá sucesso ao logar na aplicação, e uma mensagem de falha irá ser exibida.

   - Massa de teste: 404@smartbit.com / qacademy

### Test case 03 - Senha incorreta

- [X] Usuário não terá sucesso ao logar na aplicação, e uma mensagem de falha irá ser exibida.

   - Massa de teste: admin@smartbit.com / qacademy123

### Test case 04 - Email no formato incorreto

- [X] Usuário não terá sucesso ao logar na aplicação, e uma mensagem de falha irá ser exibida.

   - Massa de teste: @com.br / qacademy123

### Test case 05 - Senha em branco

- [X] Usuário não terá sucesso ao logar na aplicação, e uma mensagem de falha irá ser exibida.

   - Massa de teste: admin@smartbit.com / {EMPTY}

### Test case 06 - Email em branco

- [X] Usuário não terá sucesso ao logar na aplicação, e uma mensagem de falha irá ser exibida.

   - Massa de teste: {EMPTY} / qacademy


## Suite - Alunos - 09 tests cases


| Campos   | Descrição                             | Tipo     | Obrigatório |
| ------   | :------------------------------------ | -------- | ----------- |
| Nome     | Nome completo do aluno                | Text     | Sim         |
| E-mail   | E-mail do aluno                       | Email    | Sim         |
| Idade    | Idade do Aluno                        | Number   | Sim         |
| Peso     | Peso do Aluno                         | Number   | Sim         |
| Altura   | Altura do Aluno                       | Number   | Sim         |
| Buscar   | Buscar aluno                          | Text     | Não         |



### Test case 01 - Cadastrando aluno novo

- [ ] Um novo aluno deve ser cadastrado na academia.

   - Massa de teste: [
    Nome: Teste Não Mexer,
    E-mail: teste@gmail.com,
    Idade: 33,
    Peso: 73,
    Altura: 179 ]

 ### Test case 02 - Campos obrigatórios

- [ ] O cadastro do aluno não será feito com sucesso, e uma mensagem de erro será exibida.

   - Massa de teste: [
    Nome: {EMPTY},
    E-mail: {EMPTY},
    Idade: {EMPTY},
    Peso: {EMPTY},
    Altura: {EMPTY} ]

 ### Test case 03 - Remover aluno sem matrícula

- [ ] Deve remover apenas alunos sem matrícula vinculada.

### Test case 04 - Desistir de remover o aluno

- [ ] Deve desistir da remoção e o aluno permanecerá cadastrado no sistema.

### Test case 05 - Busca por termo não encontrado

- [ ] Deve buscar termo que não existe no cadastro de alunos.

### Test case 06 - Validação dos campos numéricos

- [ ] Deve colocar caracteres diferentes de números para validar os campos numericos "Idade", "Peso", "Altura".

  - Massa de teste: [
       Idade: "a! *",
    Peso: "a! *",
    Altura: "a! *" ]

### Test case 07 - Busca por nome

- [ ] Deve Buscar o aluno pelo nome completo ou parcial.

### Test case 08 - Busca por sobrenome

- [ ] Deve Buscar o aluno pelo sobrenome completo ou parcial.

### Test case 09 - Busca por termo

- [ ] Deve Buscar o aluno por um termo que consta em um ou mais registros.

## Suite - Planos - 09 tests cases

| Campos   | Descrição                             | Tipo     | Obrigatório |
| ------   | :------------------------------------ | -------- | ----------- |
| Plano    | Título do plano                       | Text     | Sim         |
| Duração  | Duração do plano em meses             | Number   | Sim         |
| Valor    | Valor mensal do plano                 | Text     | Não         |
| Valor    | Valor total do plano                  | Text     | Não         |
| Buscar   | Buscar aluno                          | Text     | Não         |

# ajustar daqui para baixo 

### Test case 01 - Cadastrar novo plano

- [ ] Deve Buscar o aluno pelo sobrenome completo ou parcial.

   - Massa de teste: [
    Nome: Teste Não Mexer,
    E-mail: teste@gmail.com,
    Idade: 33,
    Peso: 73,
    Altura: 179 ]

 ### Test case 02 - Campos obrigatórios

- [ ] O cadastro do aluno não será feito com sucesso, e uma mensagem de erro será exibida.

   - Massa de teste: [
    Nome: {EMPTY},
    E-mail: {EMPTY},
    Idade: {EMPTY},
    Peso: {EMPTY},
    Altura: {EMPTY} ]

### Test case 03 - Remover plano sem matrícula

- [ ] Deve Buscar o aluno pelo sobrenome completo ou parcial.

### Test case 04 - Desistir da remoção

- [ ] Deve Buscar o aluno pelo sobrenome completo ou parcial.

### Test case 05 - Busca por termo não encontrado

- [ ] Deve Buscar o aluno pelo sobrenome completo ou parcial.
### Test case 06 - Validação dos campos númericos e bloqueados

- [ ] Deve Buscar o aluno pelo sobrenome completo ou parcial.
### Test case 07 - Busca por nome de plano

- [ ] Deve Buscar o aluno pelo sobrenome completo ou parcial.
### Test case 08 - Validação do valor mensal

- [ ] Deve Buscar o aluno pelo sobrenome completo ou parcial.
### Test case 09 - Busca por termo encontrado

- [ ] Deve Buscar o aluno pelo sobrenome completo ou parcial.

## Suite - Matrícula - 04 tests cases

| Campos   | Descrição                             | Tipo     | Obrigatório |
| ------   | :------------------------------------ | -------- | ----------- |
| Plano    | Título do plano                       | Text     | Sim         |
| Duração  | Duração do plano em meses             | Number   | Sim         |
| Valor    | Valor mensal do plano                 | Text     | Não         |
| Valor    | Valor total do plano                  | Text     | Não         |
| Buscar   | Buscar aluno                          | Text     | Não         |



  ### Test case 01 - Cadastrar novo plano

- [ ] Deve Buscar o aluno pelo sobrenome completo ou parcial.

### Test case 02 - Cadastrar novo plano

- [ ] Deve Buscar o aluno pelo sobrenome completo ou parcial.

### Test case 03 - Cadastrar novo plano

- [ ] Deve Buscar o aluno pelo sobrenome completo ou parcial.

### Test case 04 - Cadastrar novo plano

- [ ] Deve Buscar o aluno pelo sobrenome completo ou parcial.



Curso ROBOCAMP do [QAcademy](https://www.linkedin.com/company/qacademybr/) e [Fernando Papito](https://www.linkedin.com/in/papitoio/)