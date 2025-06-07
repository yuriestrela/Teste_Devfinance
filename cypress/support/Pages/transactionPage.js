export class TransactionPage {

    fillModalFields(descricao, valor, data) {
        if (descricao) {
            cy.get(objectPages.typeDescription).clear().type(descricao);
        }
        if (valor) {
            cy.get(objectPages.typeValue).clear().type(valor);
        }
        if (data) {
            cy.get(objectPages.typeDate).clear().type(data);
        }
    }

    saveTransactionClick(saveButton) {
        cy.get(objectPages.saveTransactionClick).should('have.text', saveButton).click();
    }

    shouldCadastrarTransaction(descricao, valor, data) {
        cy.get('tr').contains(descricao).parent('tr')
            .should('contain', valor)
            .and('contain', data);
    }

    validateAlertMessage(expectedText) {
        cy.on('window:alert', (alertText) => {
            expect(alertText).to.equal(expectedText)
        })
    }

    fillTableFields(transacao, index, total){
        if(transacao.Descrição) {
            cy.get(objectPages.typeDescription).clear().type(transacao.Descrição)
        }
        if(transacao.Valor) {
            cy.get(objectPages.typeValue).clear().type(transacao.Valor)
        }
        if(transacao.Data) {
            cy.get(objectPages.typeDate).clear().type(transacao.Data)
        }
        
        if (index < total - 1) {
            cy.get(objectPages.saveTransactionClick).click();
            cy.get('a[class="button new"]').click()
        }
    }

    removeTransaction(){
        cy.get(objectPages.removeTransaction).click()
    }

    shouldRemoveTransaction() {
        cy.get(objectPages.removeTransaction).contains().should('not.exist')

    }

}

objectPages = {
    typeDescription: 'input[name="description"]',
    typeValue: 'input[name="amount"]',
    typeDate: 'input[name="date"]',
    saveTransactionClick: 'div[class="input-group actions"] button',
    removeTransaction: 'img[onclick="Transaction.remove(0)"]',
}