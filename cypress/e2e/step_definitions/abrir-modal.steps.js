import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given('que o usuário está na página principal', () => {
    cy.visit('https://dev-finance.netlify.app/')
});

When('ele clicar no botão "Nova Transação"', () => {
    cy.get('.button.new').click()
});

Then('o modal deve aparecer', () => {
    cy.get('.modal').shold('be.visible')
});