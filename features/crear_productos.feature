As an admin I want to create and edit products

Scenario Outline: I want to create products
  Given I am in the "products" page
  When I click "Add"
  And I fill with <name>, <price>, <description>, <photo>
  And I click "create"
  Then I should see <name>, <price>, <photo>
Examples:
  |name     |price  |description      | photo                     |
  |computer |1000.00|Personal computer| demo/images/computer.jpg  |