# language: pt

Funcionalidade: Finanças pessoais

  # Como um usuário que controla seu dinheiro
  # Quero registrar entradas e saídas de valores
  # Para acompanhar minhas finanças mensais

  Cenário: Abrir modal de nova transação
    Dado que o usuário está na página principal
    Quando ele clicar no botão "Nova Transação"
    Então o modal deve aparecer