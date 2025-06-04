# language: pt

Funcionalidade: Abrir e fechar o pop up de nova transação

  como um usuário do sistema
  eu quero abrir e fechar o modal de nova transação
  para que eu possa registrar uma nova transação ou cancelar a operação

  Cenário: CT001 - Abrir modal de nova transação
    Dado que o usuário está na página principal
    Quando ele clicar no botão "Nova Transação"
    Então o modal deve aparecer

  Cenário: CT002 - Fecha o pop up de nova transação
    Dado que o usuário está de com o pop nova transação aberto
    Quando o usuário clica no botão de cancelar do modal
    Então o modal de nova transação deve ser fechado