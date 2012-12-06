@categories
Feature: Filter by Category
  In order to quickly find the content I'm looking for
  As a site user
  In need to focus on specific categories

  @animal @vegetable @mineral
  Scenario: All results
    Given I am on the homepage
    When I follow "Categories"
    Then I should see "Animal"
    And I should see "Vegetable"
    And I should see "Mineral"

  @animal
  Scenario: Filter by Animal
    Given I am on the homepage
    And I follow "Categories"
    When I select "Animal" from "Category"
    And I press "Apply"
    Then I should see the link "Animal"

  @vegetable
  Scenario: Filter by Vegetable
    Given I am on "/categories" 
    When I select "Vegetable" from "Category"
    And I press "Apply"
    Then I should see the link "Vegetable"

  @mineral
  Scenario: Filter by Mineral
    Given I am on "/categories"
    When I select "Mineral" from "Category"
    And I press "Apply"
    Then I should see the link "Mineral"
