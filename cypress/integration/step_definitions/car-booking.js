Cypress.on('uncaught:exception', (err, runnable) => {
    return false;
  });
import { Given, And, When } from "cypress-cucumber-preprocessor/steps";


Given('user is on main page', () => {
    cy.visit('/');
    cy.get('button[id="onetrust-accept-btn-handler"]').click()

    When('"Select" button is pressed', () => {
        cy.get('a[data-testid="landing-search-button"]')
            .click()
    })

    When('one of the cards are pressed', () => {
        cy.get('h3[property="name"]').first().click()
    })

    And('"Start request" button is pressed', () => {

        cy.get('button.sc-dnqmqq.eDqzGW')
            .click()
    })

    And('"Finanzierung" button is pressed', () => {

    cy.get('button.sc-dnqmqq.ixqtzQ.options__StyledButton-oxhfkq-7.fUmGuM')
        .click()
    }) 


    When('neccessary fields are filled with valid information', () => {
       cy.fillApplicationCredit()
    })

    And('"submit" button is pressed', () => {

        cy.get('button.sc-dnqmqq.eDqzGW.sc-dXfzlN.cPEMBs')
            .click()
            cy.wait(3000)
    })

    When('"success message" appeares on the page', () => {
        cy.wait(3000)
        cy.get('div.sc-jotlie.eRSkVR')
            .contains('Vielen Dank für Deine Anfrage!')
    })
})




