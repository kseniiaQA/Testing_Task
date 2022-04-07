
Cypress.Commands.add('loginToGeorge', () => {
  cy.visit('https://george.csas.cz/?login_hint=7777777777');
  cy.wait(10000)
  cy.get('div.flex-grow.ng-binding').click()
  cy.wait(10000)
  cy.get('a.clickable.btn.btn-default.btn-lg.textcenter').click()
  })


  Cypress.Commands.add('searchWord', () => {
  cy.get('input[id="dropdown-nwaj"]').type('liftago')
  })
