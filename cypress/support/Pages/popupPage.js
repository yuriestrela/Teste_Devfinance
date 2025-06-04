export class PopupPage {

    visit() {
        cy.visit('/');
    }

    newTransactionClick(newTransactionButton) {
        cy.get(pageObjects.newTransactionClick).should('have.text', newTransactionButton).click();
    }

    shouldExibirPopup() {
        cy.get(pageObjects.shouldExibirPopup).should('be.visible');
    }

    cancelTransactionClick() {
        cy.get(pageObjects.cancelTransactionClick).click();
    }

    shouldFecharPopup() {
        cy.get(pageObjects.shouldExibirPopup).should('be.not.visible');
    }
}

const pageObjects = {
    newTransactionClick: 'a[class="button new"]',
    shouldExibirPopup: '.modal',
    cancelTransactionClick: 'a[class="button cancel"]',
    shouldFecharPopup: '.modal'
}