Cypress.on('uncaught:exception', (err, runnable) => {
    return false;
});
import { Given, When } from "cypress-cucumber-preprocessor/steps";

beforeEach(() => {

    cy.viewport(1280, 720)
})


Given('user is on main page', () => {
    cy.visit('/');
    cy.get('button[id="onetrust-accept-btn-handler"]').click()


    When('"Select" button is pressed', () => {
        cy.get('a[data-testid="landing-search-button"]')
            .click()
    })



    When('the favourite sign at the right corner of the picture is pressed', () => {
        cy.wait(4000)
        cy.get('div.sc-gleUXh.edouwY').eq(0).click()
    })



    When('the favourites sign with the number "1" is pressed', () => {
        cy.get('a.sc-cjHlYL.gZHuqi', { force: true }).eq(0).click()
    })


    Then('the favourite page opens', () => {
        cy.url().should('be.equal', 'https://www.instamotion.com/favoriten')

    })


    When('the cross to delete is pressed', () => {
        cy.get('svg.sc-htpNat.eechNo').click()
    })

    Then('the car is removed from the favourites page', () => {
        cy.get('h2').contains('Du hast noch keine Favoriten hinzugefügt')
    })
})




Given('the user in on the main page', () => {
    cy.visit('/');
    cy.get('button[id="onetrust-accept-btn-handler"]').click()


    When('"Select" button pressed', () => {
        cy.get('a[data-testid="landing-search-button"]')
            .click()
    })


    When('the favourite sign at the right corner of the picture is pressed', () => {
        cy.wait(4000)
        cy.get('div.sc-gleUXh.edouwY').eq(0).click()
    })


    When('the favourites sign with the number "1" is pressed', () => {
        cy.get('a.sc-cjHlYL.gZHuqi').eq(0).click()
    })


    Then('the favourite page opens', () => {
        cy.url()
            .should('be.equal', 'https://www.instamotion.com/favoriten')

    })


    Then('the car description is seen', () => {
        cy.get('h3.sc-ekulBa.bGyiQB').should('be.visible');

    })
})
