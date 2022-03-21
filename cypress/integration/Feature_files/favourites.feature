
Feature: Put a car in favourites and removing it from favourites 




Scenario: Put the car in the favourites, then press at the favourites tab and delete the car from favourites from the favourites page 

Given user is on main page
 When "Select" button is pressed
 When the favourite sign at the right corner of the picture is pressed  
     When the favourites sign with the number "1" is pressed
     Then the favourite page opens 
     When the cross to delete is pressed 
     Then the car is removed from the favourites page






Scenario: Put the car in the favourites, then press at the favourites tab and see the car card with the car description 

Given the user in on the main page
When "Select" button pressed
     When the favourite sign at the right corner of the picture is pressed 
     When the favourites sign with the number "1" is pressed
     Then the favourite page opens 
     Then the car description is seen 