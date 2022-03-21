Feature: Put a car in favourites and removing it from favourites 
  

  Scenario: Put the car in the favourites and then deleted it from there by pressing the favourites sign again 
    Given the car model is selected at home page 
     When the favourite sign at the right corner of the picture is pressed 
     Then the number "1" appeares in the favourites tab 
     When press the favourite sign at the right corner of the picture again 
     Then the number "1" disappears from the favourites tab



 Scenario: Put the car in the favourites, then press at the favourites tab and see the car card with the car description 
  Given the car model is selected at home page 
     When the favourite sign at the right corner of the picture is pressed 
     Then the number "1" appeares in the favourites tab 
     When the favourites sign with the number "1" is pressed
     Then the favourite page opens 
     Then the car description is seen 



Scenario: Put the car in the favourites, then press at the favourites tab and delete the car from favourites from the favourites page 
 When the favourite sign at the right corner of the picture is pressed 
     Then the number "1" appeares in the favourites tab 
     When the favourites sign with the number "1" is pressed
     Then the favourite page opens 
     When the cross to delete is pressed 
     Then the car is removed from the favourites page






Feature: Select a car and request it  

Scenario: Select a car, open its card and order it,select buying in credit, fill in the application form and submit 
    When the mark and model of the car are selected
    And "Select" button is pressed
    Then the selected cars are on the page 
    When one of the cards are pressed
    And "Start request" button is pressed
    And "Finanzierung" button is pressed
    Then the application form is shown  
    When neccessary fields are filled with valid information
    And "submit" button is pressed
    Then "success message" appeares on the page




Scenario: Select a car, open its card and order it,select buying online, fill in the application form and submit 
 When the mark and model of the car are selected
    And "Select" button is pressed
    Then the selected cars are on the page 
    When one of the cards are pressed
    And "Start request" button is pressed
    And "Online-Überweisung" button is pressed
    Then the application form is shown 
    When neccessary fields are filled with valid information
    And "submit" button is pressed
    Then "success message" with the request code appeares on the page






    




