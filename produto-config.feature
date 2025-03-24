            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Além de escolher a quantidade
            Para depois inserir no carrinho


            Contexto:
            Dado que eu acesse a página do produto escolhido

            Cenário: Adicionar produto ao carrinho
            Quando eu escolher o "tamanho"
            E a "cor"
            E a "quantidade"
            Então deve exibir a mensagem de "Produto adicionado ao carrinho com sucesso"

            Cenário: Adicionar produto ao carrinho sem definir tamanho
            Quando eu não escolher o "tamanho"
            E tentar adicionar o produto ao carrinho
            Então deve exibir a mensagem de alerta "Escolher tamanho do produto"

            Cenário: Adicionar produto ao carrinho sem definir cor
            Quando eu não escolher a "cor"
            E tentar adicionar o produto ao carrinho
            Então deve exibir a mensagem de alerta "Escolher cor do produto"

            Cenário: Adicionar produto ao carrinho sem definir quantidade
            Quando eu não escolher a "quantidade"
            E tentar adicionar o produto ao carrinho
            Então deve exibir a mensagem de alerta "Escolher quantidade do produto"

            Cenário: Adicionar mais de 10 produtos ao carrinho
            Quando eu clicar em "Adicionar ao carrinho"
            E a quantidade de itens no carrinho for maior do que "10"
            Então deve exibir a mensagem de alerta "Não é possível adicionar mais de 10 produtos ao carrinho"

            Cenário: Limpar escolha de configurações do produto
            Quando eu escolher as configurações do produto 
            E clicar no botão "Limpar"
            Então a seleção de configurações deve voltar ao estado original 

            