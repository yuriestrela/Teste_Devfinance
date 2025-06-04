# language: pt

Funcionalidade: Cadastrar transação de entrada ou despesa

    como um usuário do sistema
    eu quero cadastrar ou remover uma transação de entrada ou despesa
    para que eu possa gerenciar minhas finanças

    Contexto: 
    Dado que o usuário está na página inicial

    Cenário: CT001 - Cadastrar transação de entrada válida
        Dado que o usuário clica no botão "+ Nova Transação"
        E o usuário preenche os campos do modal com os dados válidos:
        Quando o usuário clica no botão "Salvar"
        Então a transação deve ser cadastrada com sucesso

    #     Exemplo:
    #     | Descrição | Salário    |
    #     | Valor     | 1000       |
    #     | Data      | 04/06/2025 |

    # Cenário: CT002 - Cadastrar transação com campos obrigatórios vazios
    #     Dado que o usuário clica no botão "Nova Transação"
    #     E o usuário não preenche nenhum campo do modal
    #     Quando o usuário clica no botão "Salvar"
    #     Então uma mensagem de erro deve ser exibida com o texto "Por favor, preencha todos os campos corretamente"
    #     Exemplo:
    #     | Descrição |            |
    #     | Valor     |            |
    #     | Data      |            | 

    # Cenário: CT003 - Cadastrar transação com o campo descrição vazio
    #     Dado que o usuário clica no botão "Nova Transação"
    #     E o usuário preenche os campos do modal com os dados válidos, mas deixa o campo descrição vazio
    #     Quando o usuário clica no botão "Salvar"
    #     Então uma mensagem de erro deve ser exibida com o texto "Por favor, preencha todos os campos corretamente"
        
    #     Exemplo:
    #     | Descrição |            |
    #     | Valor     | 500        |
    #     | Data      | 04/06/2025 |

    # Cenário: CT004 - Cadastrar transação com o campo valor vazio
    #     Dado que o usuário clica no botão "Nova Transação"
    #     E o usuário preenche os campos do modal com os dados válidos, mas deixa o campo valor vazio
    #     Quando o usuário clica no botão "Salvar"
    #     Então uma mensagem de erro deve ser exibida com o texto "Por favor, preencha todos os campos corretamente"
        
    #     Exemplo:
    #     | Descrição | Aluguel    |
    #     | Valor     |            |
    #     | Data      | 04/06/2025 |

    # Cenário: CT005 - Cadastrar transação com o campo data vazio
    #     Dado que o usuário clica no botão "Nova Transação"
    #     E o usuário preenche os campos do modal com os dados válidos, mas deixa o campo data vazio
    #     Quando o usuário clica no botão "Salvar"
    #     Então uma mensagem de erro deve ser exibida com o texto "Por favor, preencha todos os campos corretamente"
        
    #     Exemplo:
    #     | Descrição | Conta de Luz |
    #     | Valor     | 200          |
    #     | Data      |              |

    # Cenário: CT006 - Cadastrar transação de despesa válida
    #     Dado que o usuário clica no botão "Nova Transação"
    #     E o usuário preenche os campos do modal com os dados válidos
    #     Quando o usuário clica no botão "Salvar"
    #     Então a transação deve ser cadastrada com sucesso

    #     Exemplo:
    #     | Descrição | Internet   |
    #     | Valor     | -150       |
    #     | Data      | 04/06/2025 |

    # Cenário: CT007 - Cadastrar transação de despesa com campos obrigatórios vazios
    #     Dado que o usuário clica no botão "Nova Transação"
    #     E o usuário não preenche nenhum campo do modal
    #     Quando o usuário clica no botão "Salvar"
    #     Então uma mensagem de erro deve ser exibida com o texto "Por favor, preencha todos os campos corretamente"
        
    #     Exemplo:
    #     | Descrição |            |
    #     | Valor     |            |
    #     | Data      |            |

    # Cenário: CT008 - Cadastrar transação de despesa com o campo descrição vazio
    #     Dado que o usuário clica no botão "Nova Transação"
    #     E o usuário preenche os campos do modal com os dados válidos, mas deixa o campo descrição vazio
    #     Quando o usuário clica no botão "Salvar"
    #     Então uma mensagem de erro deve ser exibida com o texto "Por favor, preencha todos os campos corretamente"
        
    #     Exemplo:
    #     | Descrição |            |
    #     | Valor     | -300       |
    #     | Data      | 04/06/2025 |

    # Cenário: CT009 - Cadastrar transação de despesa com o campo data vazio
    #     Dado que o usuário clica no botão "Nova Transação"
    #     E o usuário preenche os campos do modal com os dados válidos, mas deixa o campo data vazio
    #     Quando o usuário clica no botão "Salvar"
    #     Então uma mensagem de erro deve ser exibida com o texto "Por favor, preencha todos os campos corretamente"
        
    #     Exemplo:
    #     | Descrição | Conta de Água |
    #     | Valor     | -100          |
    #     | Data      |               |


    # Cenário: CT010 - Remover transação cadastrada
    #     Dado que o usuário clica no botão "Nova Transação"
    #     E o usuário preenche os campos do modal com os dados válidos
    #     E o usuário clica no botão "Salvar"
    #     E o usuário visualiza a transação cadastrada na lista de transações
    #     Quando o usuário clica no botão "Remover" da transação
    #     Então a transação deve ser removida com sucesso
   