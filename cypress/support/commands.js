
Cypress.Commands.add('fillApplicationCredit', () => {
    cy.get('div.sc-RefOD.jSHGSS').eq(0).click()
    cy.get('div').contains('Herr').click()
    cy.get('input[id="checkout.form.name"]').type('Mark')
    cy.get('input[id="checkout.form.surname"]').type('Smith')
    cy.get('input[id="checkout.form.email"]').type('example@gmail.com')
    cy.get('label.sc-gPEVay.cGFxnj').click()
    cy.get('input.sc-iQKALj.cYYDDW').eq(1).click()
    cy.get('div').contains('Österreich, +43').click()
    cy.get('input[id="checkout.form.phone"]').type('1234567')
  })

