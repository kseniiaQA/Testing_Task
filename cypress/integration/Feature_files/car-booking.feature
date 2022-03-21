Feature: Select a car and request it  

Scenario: Select a car, open its card and order it,select buying in credit, fill in the application form and submit 
    Given user is on main page 
    When "Select" button is pressed 
    When one of the cards are pressed 
    And "Start request" button is pressed 
    And "Finanzierung" button is pressed 
    When neccessary fields are filled with valid information
    And "submit" button is pressed
    Then "success message" appeares on the page 


