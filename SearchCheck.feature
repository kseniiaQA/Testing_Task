Feature: Finds the transactions by the key words "liftago" in the search 
  

Scenario: Find the transactions by typing "liftago" in the search field
    Given the word "liftago" is typed
     When the "enter button" on the keyboard is pressed 
     Then the transaction "liftago.com" are found 



Scenario: Find the transactions by typing "liftago" in the search field
    Given the word "liftago" is typed
     When the "search button" is pressed 
     Then the transaction "liftago.com" are found 



Scenario: Find the transactions by copy pasting "liftago" in the search field
    Given the word "liftago" is copy pasted
     When the "search button" is pressed 
     Then the transaction "liftago.com" are found 


Scenario: Find the results of transactions by typing "liftago" in the drop-down list 
    Given the word "liftago" is typed 
    Then there is no drop-down list with hints 

 

Scenario: Find the results of transactions by clicking to the search field 
    Given the liftago was already searched 
    When we click the search field
    Then there is no liftago results shown in the drop-down list 
    And words "last weel", "last month" , "last year", "yesterday" are shown in the drop-down list 



Scenario: Find the transactions by typing " liftago" with a space before the input in the search field
    Given the word " liftago" is typed
     When the "enter button" on the keyboard is pressed 
     Then the phrase "I'm sorry, I could not find what you were searching for. Could you please specify your search criteria?" is shown on the result page 



Scenario: Find the transactions by typing "liftago " with a space after the input in the search field
    Given the word "liftago " is typed
     When the "enter button" on the keyboard is pressed 
     Then the phrase "I'm sorry, I could not find what you were searching for. Could you please specify your search criteria?" is shown on the result page 



Scenario: Find the transactions by typing "LIFTAGO" in big letters in the search field
    Given the word "LIFTAGO" is typed
     When the "enter button" on the keyboard is pressed 
     Then the transaction "liftago.com" are found 



Scenario: Find the transactions by typing "Liftago" in different register (big and small letters) in the search field
    Given the word "Liftago" is typed
     When the "enter button" on the keyboard is pressed 
     Then the transaction "liftago.com" are found 



Checklist link: 

https://docs.google.com/spreadsheets/d/1P_HklT7UJAYl-4p0v4PkxPOQn9bAI0X09QVNONfe_xA/edit#gid=0