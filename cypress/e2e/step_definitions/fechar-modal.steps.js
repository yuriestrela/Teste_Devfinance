import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given('que o usuário está na página principal', () => {
    cy.visit('https://dev-finance.netlify.app/')
});

Then('o modal de nova transação está aberto', () => {
    cy.get('.button.new').click();
    cy.get('.modal').should('be.visible');
});

When('o usuário clica no botão de cancelar do modal', () => {
    cy.get('.modal button.close').click();
});

Then('o modal de nova transação deve ser fechado', () => {
    cy.get('.modal').should('not.exist');
    cy.get('.modal').should('not.be.visible');
});