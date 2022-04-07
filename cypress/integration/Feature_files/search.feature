Feature: Finds the transactions by the key words "liftago" through the search 
  

  Scenario: Find the transactions by typing "liftago" in the search field
    Given the word "liftago" is typed
     When the "enter button" on the keyboard is pressed 
     Then the transaction "liftago.com" are found 


