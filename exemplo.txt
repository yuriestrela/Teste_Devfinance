const { format, prepareLocalStorage } = require("../support/utils")

const entrada1 = 'Extra'
const saida1 = 'Reserva Bancária'

context('Dev Finance', () => {

    beforeEach(() => {
        cy.visit('https://dev-finance.netlify.app/', {
            onBeforeLoad: (win) =>{
                prepareLocalStorage(win)
            }
        });
        
    });

    it('Cadastrar entradas', () => {
        // Mapear os elementos
        // Interagir com o Cypress
        // Descrever as interações

        cy.get('#transaction .button').click();
        cy.get('#description').type(entrada1);
        cy.get('#amount').type(1500);
        cy.get('#date').type('2024-11-05');
        cy.get('button').contains('Salvar').click();

        cy.get('#data-table tbody tr').should('have.length', 3);
    });

    it('Cadastrar Saídas', () => {

        cy.get('#transaction .button').click();
        cy.get('#description').type(saida1);
        cy.get('#amount').type(-300);
        cy.get('#date').type('2024-11-15');
        cy.get('button').contains('Salvar').click();

        cy.get('#data-table tbody tr').should('have.length', 3);
    });

    it('Remover item', () => {

        cy.get('td.description')
            .contains('Pagamento')
            .parent()
            .find('img[onclick*=remove]')
            .click()

            
        cy.get('td.description')
        .contains('Noitada')
        .parent()
        .find('img[onclick*=remove]')
        .click()
    });


    it('Verificar saldos', () => {

        let income = 0
        let expense = 0


        // Verificar Saldos
        cy.get('#data-table tbody tr')
            .each(($el, index, $list) => {
                cy.get($el).find('td.income, td.expense').invoke('text').then(text => {
                    if(text.includes('-')) {
                        expense = expense + format(text)
                    } else {
                        income = income + format(text)
                    }
                cy.log(`Entradas:`, income)
                cy.log(`Saídas:`, expense)
                
                })
            })
    });
});

