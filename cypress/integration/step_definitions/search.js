Cypress.on('uncaught:exception', () => {
    return false;
  });
import { Given, When } from "cypress-cucumber-preprocessor/steps";

beforeEach(() => {

    cy.loginToGeorge()
  
  })

Given('the word "liftago" is typed', () => {
    cy.searchWord()

When('the "enter button" on the keyboard is pressed', () => {
    cy.get('input[id="dropdown-nwaj"]').type('{enter}')
    })

Then('the transactions "liftago.com" are found', () => {
    cy.contains('Liftago.com Usti nad Labe CZ').should('be.visible') 
    })

})

