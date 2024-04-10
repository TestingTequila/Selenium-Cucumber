Feature: Login Page functionality Test Cases

  Scenario: To verify functionality of login page when correct email and correct password is entered
  Given Open the browser
  And Enter the application url
  When Click on My Account Icon
  And Click on Login Link
  When Enter correct email
  And Enter correct password
  And Click on Login button
  Then Validate Login Status
  And Close the Browser

