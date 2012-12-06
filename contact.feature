Feature: Make contact
  In order to ask questions, provide feedback, or report problems
  As a site visitor
  I need to be able to contact the people at Everyday Drupal

  Scenario Outline: Anonymous user
    Given I am on the homepage
    And I follow "Contact"
    And I fill in "<fields>" with "<data>"
  
    Examples:
    | fields              | data                |
    | Your name           | Visitor             |
    | Your e-mail address | visitor@example.com |
    | Subject             | Subject line        |
    | Message             | A short message     |

    Then I should see "Your message has been sent."
