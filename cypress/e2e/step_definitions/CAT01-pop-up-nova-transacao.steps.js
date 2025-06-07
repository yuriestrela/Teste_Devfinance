import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import { PopupPage } from "../../support/Pages/popupPage";
const popupPage = new PopupPage();

Given('que o usuário está na página principal', () => {
    popupPage.visit()
});

When('ele clicar no botão {string}', (newTransactionButton) => {
    popupPage.newTransactionClick(newTransactionButton)
});

Then('o modal deve aparecer', () => {
    popupPage.shouldExibirPopup()
});

Given('que o usuário está de com o pop nova transação aberto {string}', (newTransactionButton) => {
    popupPage.visit()
    popupPage.newTransactionClick(newTransactionButton)
})

When('o usuário clica no botão de cancelar do modal', () => {
    popupPage.cancelTransactionClick()
})

Then('o modal de nova transação deve ser fechado', () => {
    popupPage.shouldFecharPopup()
});