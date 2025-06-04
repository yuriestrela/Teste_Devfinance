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

When('o usuário preenche os campos do modal com os dados válidos:', () => {
    transactionPage.fillModalFields();
});

When('o usuário clica no botão {string}', (saveButton) => {
    transactionPage.saveTransactionClick(saveButton);
});

Then('a transação deve ser cadastrada com sucesso', () => {
    popupPage.shouldFecharPopup()
    transactionPage.shouldCadastrarTransaction();
});