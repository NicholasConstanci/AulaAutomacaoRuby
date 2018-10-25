#language: pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um Usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados

    Contexto: Página principal
        Dado que eu acesso a página principal

    @logout
    Cenario: Usuário deve ser autorizado
        Quando eu faço login com "teste@teste.teste" e "teste123"
        Então devo ser autenticado com sucesso
        E devo ver a seguinte mensagem: "Olá, teste"

    Esquema do Cenario: Tentativa de login
        Quando eu faço login com "<email>" e "<senha>"
        Então devo ver a seguinte mensagem: "<alerta>"

        Exemplos:
        |email|senha|alerta|
        |teste@teste.teste|teste128|Senha inválida|
        |teste@teste.falhou|teste123|Usuário não cadastrado|
        |teste-teste.teste|teste123|Email incorreto ou ausente| 
        ||teste123|Email incorreto ou ausente| 

    

