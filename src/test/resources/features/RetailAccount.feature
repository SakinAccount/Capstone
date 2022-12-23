Feature: Retail Account Page

  Background: 
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'sakijan@gmail.com' and password 'Begimj@2020'
    And User click on login button
    And User should be logged in into Account
    When User click on Account option

  Scenario: Verify User can update Profile Information
    When User click on Account option
    And User update Name 'Jak' and phone '2028549657'
    And User click on Update button
    Then User profile information should be updated

  Scenario: Verify User can Update password
    And User enter below information
      | previousPassword | newPassword | confirmPassword |
      | Begimj@2020       | Begima@2020 | Begimaj@2020     |
    And User click on Change Password button
    Then a message should be displayed 'Password Updated Successfully'

  Scenario: Verify User can add a payment method
    When User click on Account option
    And User click on Add a payment method link
    And User fill Debit or credit card information
      | cardNumber       | nameOnCard | expirationYear | expirationMonth | securityCode |
      | 5896471235896322 | John       |           2025 |              11 |          312 |
    And User click on Add your card button
    Then a message should be displayed'Payment Method added sucessfully'

  Scenario: Verify User can edit Debit or Credit card
    When User click on Account option
    And User click on Edit option of card section
    And User edit information with below data
      | cardNumber       | nameOnCard | expirationYear | expirationMonth | securityCode |
      | 5896471235896845 | John       |           2024 |              12 |          546 |
    And user click on Update Your Card button
    Then a message should be displayed 'Payment Method updated Successfully'

  Scenario: Verify User can remove Debit or Credit card
    When User click on Account option
    And User click on remove option of card section
    Then payment details should be removed

  Scenario: Verify User can add an Address
    When User click on Account option
    And User click on Add address option
    And User fill new address form with below information
      | country       | fullName  | phoneNumber | streetAddress | apt | city      | state    | zipCode |
      | United States | Jack John |  7032547896 | 587 Main      | 502 | Arlington | Virginia |   22209 |
    And User click Add Your Address button
    Then a message should be displayed 'Address Added Successfully'


  Scenario: Verify User can edit an Address added on account
    When User click on Account option
    And User click on edit address option
    And User edit address form with below information
      | country    | fullName | phoneNumber   | streetAddress | apt | city     | state    | zipCode |
      | Tajikistan | Jac Joh  | 992934080886 | 88 Rudaki     | 501 | Firdavsi | Dushanbe |  736000 |
    And User click update Your Address button
    Then a message should be displayed 'Address Updated Successfully'

  Scenario: Verify User can remove Address from Account
    When User click on Account option
    And User click on remove option of Address section
    Then Address details should be removed
   
