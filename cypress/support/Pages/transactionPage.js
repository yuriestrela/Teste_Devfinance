export class TransactionPage {

    fillModalFields(){
        cy.get(objectPages.typeDescription).type('Compra de Material');
        cy.get(objectPages.typeValue).type('100');
        cy.get(objectPages.typeDate).type('2023-10-01');
    }

    saveTransactionClick(saveButton) {
        cy.get(objectPages.saveTransactionClick).should('have.text', saveButton).click();
    }

    shouldCadastrarTransaction() {
        cy.get(objectPages.shouldCadastrarTransaction).should('be.visible');
    }
}

objectPages = {
    typeDescription: 'input[name="description"]',
    typeValue: 'input[name="amount"]',
    typeDate: 'input[name="date"]',
    saveTransactionClick: 'div[class="input-group actions"] button',
    shouldCadastrarTransaction: 'tr[data-index="0"]',
}