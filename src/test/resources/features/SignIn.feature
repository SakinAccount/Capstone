Feature: Sign In Feature

  Background: 
    Given User is on retail website
    When User click on Sign in option
@Smoke
  Scenario: Verify user can sign in into Retail Application
    And User enter email 'sakijan@gmail.com' and password 'Begimj@2020'
    And User click on login button
    Then User should be logged in into Account

  Scenario: Verify user can create an acount into Retail Application
    And User click on Create New Account button
    And User fill the signUp information with below data
      | name | email            | password       | confirmPassword |
      | jakc | jack8859@mail.ru | Sakin23@2020 | Sakin23@2022   |
    And User click on SignUp button
    Then User should be logged into account page
