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
        Então a transação '<Descrição>' deve ser cadastrada com sucesso na linha <Index>

    Exemplos:
        | Descrição | Valor    | Data      | Index |
        | Salário   | 5000     | 2025-06-04| 0     |


    Cenário: CT002 - Cadastrar transação com campos obrigatórios vazios
        Dado que o usuário clica no botão "+ Nova Transação"
        E o usuário não preenche os campos do modal
        Quando o usuário clica no botão "Salvar"
        Então uma mensagem de erro deve ser exibida com o texto "Por favor, preencha todos os campos corretamente"

    Exemplos:
        | Descrição | Valor | Data | Index |
        |           |       |      |       |    


    Cenário: CT003 - Cadastrar transação com o campo descrição vazio
        Dado que o usuário clica no botão "+ Nova Transação"
        E o usuário preenche os campos do modal com '<Descrição>', '<Valor>' e '<Data>'
        Quando o usuário clica no botão "Salvar"
        Então uma mensagem de erro deve ser exibida com o texto "Por favor, preencha todos os campos corretamente"

    Exemplos:
        | Descrição | Valor | Data       | Index |      
        |           | 500   | 2025-06-04 | 0     |


    Cenário: CT004 - Cadastrar transação com o campo valor vazio
        Dado que o usuário clica no botão "+ Nova Transação"
        E o usuário preenche os campos do modal com '<Descrição>', '<Valor>' e '<Data>'
        Quando o usuário clica no botão "Salvar"
        Então uma mensagem de erro deve ser exibida com o texto "Por favor, preencha todos os campos corretamente"

    Exemplos:
        | Descrição | Valor | Data       | Index |
        | Aluguel   |       | 2025-06-04 | 0     |


    Cenário: CT005 - Cadastrar transação com o campo data vazio
        Dado que o usuário clica no botão "+ Nova Transação"
        E o usuário preenche os campos do modal com '<Descrição>', '<Valor>' e '<Data>'
        Quando o usuário clica no botão "Salvar"
        Então uma mensagem de erro deve ser exibida com o texto "Por favor, preencha todos os campos corretamente"

    Exemplos:
        | Descrição     | Valor | Data | Index |
        | Conta de Luz  | 200   |      | 0     |


    Cenário: CT006 - Cadastrar transação de despesa válida
        Dado que o usuário clica no botão "+ Nova Transação"
        E o usuário preenche os campos do modal com '<Descrição>', '<Valor>' e '<Data>'
        Quando o usuário clica no botão "Salvar"
        Então a transação '<Descrição>' deve ser cadastrada com sucesso na linha <Index>

    Exemplos:
      | Descrição | Valor | Data       | Index |
      | Internet  | -150  | 2025-06-04 | 0     |


    Cenário: CT007 - Cadastrar múltiplas transações válidas
        Dado que o usuário clica no botão "+ Nova Transação"
        E o usuário cadastra as seguintes transações:
        | Descrição       | Valor  | Data       | Index |
        | Salário         | 5000   | 2025-06-04 | 0     |
        | Internet        | -150   | 2025-06-04 | 1     |
        | Aluguel         | -1200  | 2025-06-04 | 2     |
        Quando o usuário clica no botão "Salvar"
        Então as seguintes transações devem ser cadastradas com sucesso:
        | Descrição | Index |
        | Salário   | 0     |
        | Internet  | 1     |
        | Aluguel   | 2     |    


    Cenário: CT008 - Remover transação cadastrada
        Dado que o usuário clica no botão "+ Nova Transação"
        E o usuário cadastra as seguintes transações:
        | Descrição       | Valor  | Data       | Index |
        | Salário         | 5000   | 2025-06-04 | 0     |
        | Salão           | -300   | 2025-06-04 | 1     |
        | Mesada          |  100   | 2025-06-04 | 2     |
        E o usuário clica no botão "Salvar"
        Quando o usuário clica no botão "Remover" das seguintes transações:
        | Descrição  | Index |
        | Mesada     | 2     |
        | Salão      | 1     |
        Então as seguintes transações devem ser removidas com sucesso:
        | Mesada     |
        | Salão      |
