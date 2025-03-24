            #language: pt

            Funcionalidade: Fazer login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos


            Contexto:
            Dado que eu acesse a página de login da plataforma

            Esquema do Cenário: Autenticar usuário para prosseguir
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> adequada

            Exemplos:
            | usuario             | senha   | mensagem                     |
            | "william@email.com" | "123@"  | "Usuário autenticado"        |
            | "william"           | "1234@" | "Usuário ou senha inválidos" |
            | "william@email.com  | "12"    | "Usuário ou senha inválidos" |


            Cenário: Usuário autenticado
            Quando eu inserir dados válidos
            E a mensagem de "Usuário autenticado" for exibida
            Então devo ser automaticamente redirecionado para a página de checkout 