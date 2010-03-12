Feature: Product editing 

In order to update product information
As an admin
I want to edit a product

Scenario: Product editing
  Given I have a product
  And I am on the edit product page
  
  When I fill in the following:
    |Name         |Mouse                |
    |Price        |41.00                |
    |Description  |Simple genious mouse |
    
  And I submit the edit product form
  
  Then the product should be updated with:
    |Name         |Mouse                |
    |Price        |41.00                |
    |Description  |Simple genious mouse |


