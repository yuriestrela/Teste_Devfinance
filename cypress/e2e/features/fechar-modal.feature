# language: pt

Funcionalidade: Fechar o modal de nova transação

    Como um usuário que controla seu dinheiro
    Quero fechar o modal de nova transação
    Para voltar à visualização principal

  Cenário: Usuário fecha o modal de nova transação
    Dado que o usuário está na página principal
    E o modal de nova transação está aberto
    Quando o usuário clica no botão de cancelar do modal
    Então o modal de nova transação deve ser fechado