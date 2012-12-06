@javascript
Feature: Filter by Category
  In order to quickly find the content I'm looking for
  As a site user
  In need to focus on specific categories

  Scenario: All results
    Given I am on the homepage
    When I follow "Categories"
    Then I should see "Animal"
    And I should see "Vegetable"
    And I should see "Mineral"

  Scenario Outline: Filter by Animal
    Given I am on "/categories"
    When I select "<category>" from "Category"
    And I press "Apply"
    Then I should see the link "<category>"
    And I should not see the link "<other>"

    Examples:
    | category  | other     |
    | Animal    | Vegetable |
    | Vegetable | Mineral   |
    | Mineral   | Animal    |


