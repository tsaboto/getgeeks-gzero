### User Story - Cadastro de clientes

BDD (Behavior Driven Development)

> Sendo um visitante que deseja contratar serviços de TI
> Posso fazer o meu cadastro
> Para que eu possa buscar por prestadores de serviços (Geeks)

##### Cenário: Cadastro de cliente

Dado que acesso a página de cadastro
Quando faço o meu cadastro com o nome completo, e-mail e senha
Então vejo a mensagem de boas vindas:
     "Agora você faz parte da Getgeeks. Tenha uma ótima experiência."

##### Cenário: E-mail duplicado

Dado que acesso a página de cadastro
Porem o meu e-mail já foi cadastrado
Quando faço o meu cadastro com o nome completo, e-mail e senha
Então vejo a mensagem de alerta:
    "Oops! Já temos um usuário com o e-mail informado."

##### Cenário: Email com formato incorreto

Dado que acesso a página de cadastro
Quando faço o meu cadastro com um email incorreto
Então vejo a mensagem de alerta "O email está estranho"

##### Cenário: Campos obrigatórios

Dado que acesso a página de cadastro
Quando submeto o cadastro sem preencher o formulário
Então devo ver uma mensagem informando que todos os campos são obrigatórios

#### Cenário: Senha muito curta
Dado que acesso a pagina de cadastro
Quando submeto o cadastro com uma senha com menos de 6 digitos
Então vejo a mensagem de alereta "Informe uma senha com pelo menos 6 caracteres"


### Desafio 1 do modulo Pro
automatizar 3 novos casos de testes:
Email obrigatorio - colocando so o campo senha - msg senha obrigatorio
Senha obrigatorio -  Colocando o campo email msg de erro senha obrigatorio
Campos obrigatorios - não preencher nada e clicar no campo entrar - msg de erro, email e senha obrigatorios 
