Feature: Subscribing to newsletter
  As a user I should have the possibility to subscribe to the pharmacy's newsletter

  Background:
    Given I am on the main site

    Scenario: Providing correct data
      When I type correct email information
      And Click "Save me" button
      Then New window is opened with message informing that activation link has been sent

    Scenario: Not providing e-mail
      When I don't provide email information
      And click "Save me" button
      Then following message appears: "The form contains errors. Check the corectness of the data" appears

    Scenario: Providing non-existing e-mail
      When I provide non-existing email information
      And click "Save me" button
      Then following message: "The form contains errors. Check the corectness of the data" should be displayed


