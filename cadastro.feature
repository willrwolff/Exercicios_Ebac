            #language: pt

            Funcionalidade: Concluir cadastro na plataforma 
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro   
            Para finalizar minha compra

            Contexto:
            Dado que eu tente prosseguir para checkout sem ter meu cadastro concluído na plataforma
 
            Cenário: Campos obrigatórios não preenchidos 
            Quando eu não preencher qualquer campo marcado como obrigatório
            E clicar em "Finalizar cadastro"
            Então deve exibir a mensagem de erro "Campos marcados com asterisco (*) devem ser preenchidos"

            Cenário: Email em formato inválido 
            Quando eu inserir meu email em formato inválido 
            E clicar em "Finalizar cadastro"
            Então deve exibir a mensagem de erro "Formato de email inválido. Preencha o campo com um endereço de email válido"

            Cenário: Cadastro com campos não preenchidos 
            Quando eu não preencher qualquer campo não obrigatório
            E clicar em "Finalizar cadastro"
            Então deve exibir a mensagem de alerta "Há campos não preenchidos. Confirmar cadastro?"

            Cenário: Cadastro completo
            Quando eu preencher todos campos obrigatórios e não obrigatórios
            E informar um endereço de email válido
            E clicar em "Finalizar cadastro"
            Então devo ser automaticamente redirecionado para a página de checkout 