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

    shouldCadastrarTransaction(descricao, index) {
        cy.get(`tr[data-index="${index}"]`).within(() => {
            cy.get('td.description').should('have.text', descricao);
        });    
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

    removeTransaction(index){
        cy.get(`img[onclick="Transaction.remove(${index})"]`).click()
    }

    shouldRemoveTransaction(descricao) {
        cy.contains(objectPages.shouldRemoveTransaction, descricao).should('not.exist')

    }

}

objectPages = {
    typeDescription: 'input[name="description"]',
    typeValue: 'input[name="amount"]',
    typeDate: 'input[name="date"]',
    saveTransactionClick: 'div[class="input-group actions"] button',
    shouldRemoveTransaction: 'td.description'
}