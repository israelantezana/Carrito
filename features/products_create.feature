Feature: Creating a product

In order to populate the system with products
As an admin
I want to create a product

Scenario: Creating a product
  Given there are no products
  And   I am on the new product page
  
  When I fill in the following:
    | Name            | Computer            |
    | Price           | 1000.00             |
    | Description     | Personal Computer   |
  And I submit the new product form
  
  Then the product should be created with:
    | Name            | Computer            |
    | Price           | 1000.00             |
    | Description     | Personal Computer   |