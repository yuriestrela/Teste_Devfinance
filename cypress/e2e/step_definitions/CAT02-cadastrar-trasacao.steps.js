import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import { PopupPage } from "../../support/Pages/popupPage";
import { TransactionPage } from "../../support/Pages/transactionPage";
const popupPage = new PopupPage();
const transactionPage = new TransactionPage();

Given('que o usuário está na página inicial', () => {
    popupPage.visit();
});

When('que o usuário clica no botão {string}', (newTransactionButton) => {
    popupPage.newTransactionClick(newTransactionButton);
});

When('o usuário preenche os campos do modal com {string}, {string} e {string}', (descricao, valor, data) => {
    transactionPage.fillModalFields(descricao, valor, data)
});

When('o usuário clica no botão {string}', (saveButton) => {
    transactionPage.saveTransactionClick(saveButton);
});

Then('a transação {string}, {string} e {string} deve ser cadastrada com sucesso', (descricao, valor, data) => {
    popupPage.shouldFecharPopup()
    transactionPage.shouldCadastrarTransaction(descricao, valor, data);
});

Given('o usuário não preenche os campos do modal', () => {

});

Then('uma mensagem de erro deve ser exibida com o texto {string}', (error) => {
    transactionPage.validateAlertMessage(error);
});


When('o usuário visualiza a transação cadastrada na lista de transações', () => {
    transactionPage.shouldCadastrarTransaction()
})

When('o usuário cadastra as seguintes transações:', (tabela) => {
    const transacoes = tabela.hashes()
    transacoes.forEach((transacao, index) => {
        transactionPage.fillTableFields(transacao, index, transacoes.length)
    })
})

Given('que o usuário tem transações cadastradas', (tabela) => {
    const transacoes = tabela.hashes()
    transacoes.forEach((transacao, index) => {
        transactionPage.fillTableFields(transacao, index, transacoes.length)
    })
})

When('o usuário clica no botão {string} da transação', () => {
    transactionPage.removeTransaction()
})
    
Then('a transação deve ser removida com sucesso', () => {
    transactionPage.shouldRemoveTransaction()
})