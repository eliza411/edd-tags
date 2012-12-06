@categories @javascript
Feature: Filter by Category
  In order to quickly find the content I'm looking for
  As a site user
  In need to focus on specific categories

  Background: 
    Given I am on the homepage
    And I follow "Categories"
  
  @animal @vegetable @mineral
  Scenario: All results
    Then I should see "Animal"
    And I should see "Vegetable"
    And I should see "Mineral"

  @animal
  Scenario: Filter by Animal
    When I select "Animal" from "Category"
    And I press "Apply"
    Then I should see the link "Animal"

  @vegetable
  Scenario: Filter by Vegetable
    When I select "Vegetable" from "Category"
    And I press "Apply"
    Then I should see the link "Vegetable"

  @mineral
  Scenario: Filter by Mineral
    When I select "Mineral" from "Category"
    And I press "Apply"
    Then I should see the link "Mineral"
