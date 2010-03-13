Feature: Viewing the list of products
  In order to see the products in the system
  As an admin
  I want to view the list of products

  Scenario: Viewing the list of products
    Given the following products:
      | name        | price   | description           |
      | Headphones  | 35.00   | Logitech clearphones  |
  
    When I go to the products page
  
    Then I should see "Headphones"
    And I should see "35.0"
    And I should see "Logitech clearphones"
