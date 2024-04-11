Feature: Login Page functionality Test Cases

  Background:
    Given Open the browser
    And Enter the application url
    When Click on My Account Icon
    And Click on Login Link

  @sanity
  Scenario: To verify functionality of login page when correct email and correct password is entered
    When Enter correct email
    And Enter correct password
    And Click on Login button
    Then Validate Login Status
    And Close the Browser

    @sanity
  Scenario: [Passing data using Regular Expression] To verify functionality of login page when correct email and correct password is entered
    When Enter correct email as "ben.fletcher@janbask.com"
    And Enter correct password as "test@1234"
    And Click on Login button
    Then Validate Login Status
    And Close the Browser

      @regression
  Scenario: [passing data using data table]To verify functionality of login page when correct email and correct password is entered
    When enter below details
      | forest.grump@janbask.com | test@1234 | Forest Gump | Army |
    And Click on Login button
    Then Validate Login Status
    And Close the Browser

    @smoke
  Scenario Outline: [passing data using parametrization]To verify functionality of login page when correct email and correct password is entered
    When enter correct "<emailId>" and correct "<password>"
    And Click on Login button
    Then Validate Login Status
    And Close the Browser
    Examples:
      | emailId                   | password  |
      | ben.fletcher@janbask.com  | test@1234 |
      | zubair.ansari@janbask.com | test@1234 |
      | forest.grump@janbask.com  | test@1234 |

  @smoke
  Scenario Outline: [passing data using parametrization]To verify functionality of login page when correct email and correct password is entered
    When enter the correct "<username>" and correct "<password>"
    And Click on Login button
    Then Validate Login Status
    And Close the Browser
    Examples:
      | username                  | password  |
      | ben.fletcher@janbask.com  | test@1234 |
      | zubair.ansari@janbask.com | test@1234 |
      | forest.grump@janbask.com  | test@1234 |
