# language: pt

Funcionalidade: Cadastrar transação de entrada ou despesa

    como um usuário do sistema
    eu quero cadastrar ou remover uma transação de entrada ou despesa
    para que eu possa gerenciar minhas finanças

    Contexto: 
    Dado que o usuário está na página inicial

    Cenário: CT001 - Cadastrar transação de entrada válida
        Dado que o usuário clica no botão "+ Nova Transação"
        E o usuário preenche os campos do modal com '<Descrição>', '<Valor>' e '<Data>'
        Quando o usuário clica no botão "Salvar"
        Então a transação '<Descrição>', '<Valor>' e '<Data>' deve ser cadastrada com sucesso

    Exemplos:
        | Descrição | Valor    | Data      |
        | Salário   | 5000     | 2025-06-04|


    Cenário: CT002 - Cadastrar transação com campos obrigatórios vazios
        Dado que o usuário clica no botão "+ Nova Transação"
        E o usuário não preenche os campos do modal
        Quando o usuário clica no botão "Salvar"
        Então uma mensagem de erro deve ser exibida com o texto "Por favor, preencha todos os campos corretamente"

    Exemplos:
        | Descrição | Valor | Data |
        |           |       |      |


    Cenário: CT003 - Cadastrar transação com o campo descrição vazio
        Dado que o usuário clica no botão "+ Nova Transação"
        E o usuário preenche os campos do modal com '<Descrição>', '<Valor>' e '<Data>'
        Quando o usuário clica no botão "Salvar"
        Então uma mensagem de erro deve ser exibida com o texto "Por favor, preencha todos os campos corretamente"

    Exemplos:
        | Descrição | Valor | Data       |
        |           | 500   | 2025-06-04 |


    Cenário: CT004 - Cadastrar transação com o campo valor vazio
        Dado que o usuário clica no botão "+ Nova Transação"
        E o usuário preenche os campos do modal com '<Descrição>', '<Valor>' e '<Data>'
        Quando o usuário clica no botão "Salvar"
        Então uma mensagem de erro deve ser exibida com o texto "Por favor, preencha todos os campos corretamente"

    Exemplos:
        | Descrição | Valor | Data       |
        | Aluguel   |       | 2025-06-04 |


    Cenário: CT005 - Cadastrar transação com o campo data vazio
        Dado que o usuário clica no botão "+ Nova Transação"
        E o usuário preenche os campos do modal com '<Descrição>', '<Valor>' e '<Data>'
        Quando o usuário clica no botão "Salvar"
        Então uma mensagem de erro deve ser exibida com o texto "Por favor, preencha todos os campos corretamente"

    Exemplos:
        | Descrição     | Valor | Data |
        | Conta de Luz  | 200   |      |


    Cenário: CT006 - Cadastrar transação de despesa válida
        Dado que o usuário clica no botão "+ Nova Transação"
        E o usuário preenche os campos do modal com '<Descrição>', '<Valor>' e '<Data>'
        Quando o usuário clica no botão "Salvar"
        Então a transação '<Descrição>', '<Valor>' e '<Data>' deve ser cadastrada com sucesso

    Exemplos:
      | Descrição | Valor | Data       |
      | Internet  | -150  | 2025-06-04 |


    Cenário: CT007 - Cadastrar múltiplas transações válidas
        Dado que o usuário clica no botão "+ Nova Transação"
        E o usuário cadastra as seguintes transações:
        | Descrição       | Valor  | Data       |
        | Salário         | 5000   | 2025-06-04 |
        | Internet        | -150   | 2025-06-04 |
        | Aluguel         | -1200  | 2025-06-04 |
        Quando o usuário clica no botão "Salvar"
        Então a transação '<Descrição>', '<Valor>' e '<Data>' deve ser cadastrada com sucesso


    # Cenário: CT08 - Remover transação cadastrada
    #     Dado que o usuário clica no botão "+ Nova Transação"
    #     E o usuário cadastra as seguintes transações:
    #     | Descrição       | Valor  | Data       |
    #     | Salão           | -300   | 2025-06-04 |
    #     | Mesada          |  100   | 2025-06-04 |
    #     E o usuário clica no botão "Salvar"
    #     E o usuário visualiza a transação cadastrada na lista de transações
    #     Quando o usuário clica no botão "Remover" da transação
    #     Então a transação '<Descrição>', '<Valor>' e '<Data>' deve ser removida com sucesso
   