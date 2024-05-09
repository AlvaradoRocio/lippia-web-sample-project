Feature: As a potential client I want to login in clockify

  @LoginSuccessfull @Smoke
  Scenario Outline: The client login in clockify
    Given The client is on home page
    When The client on log in button on landing page
    When the client on log in manually button
    When the client set the mail <email>
    When The client set the password <password>
    When The client verify is on dashboard
    Then The client is on main page

    Examples:
      | email                          | password     |
      | "rocio.b.alvarado@hotmail.com" | "Rocio1234!" |


  @LoginFallido @Smoke
  Scenario Outline: The client login in clockify fail mail bad
    Given The client is on home page
    When The client on log in button on landing page
    When the client on log in manually button
    When the client set the mail <email>
    When The client set the password <password>
    Then The client sees a bad format error message.

    Examples:
      | email                          | password     |
      | "usuario3@@example.com" | "Rocio1234!" |
      | "usuario4example.com"  | "Rocio1234!"     |


  Scenario: The client login in clockify fail password bad
    Given The client is on home page
    When The client on log in button on landing page
    When the client on log in manually button
    When the client set the mail "rociobalvarado@hotmail.com"
    When The client set the password "rocio.b.alvarado@hotmail.com"
    When The client verify is on dashboard
    Then  The client sees an error message


  Scenario: The client login in clockify with a non-existent user
    Given The client is on home page
    When The client on log in button on landing page
    When the client on log in manually button
    When the client set the mail "rociobalvarado@hotmail.com"
    When The client set the password "rocio1234!"
    Then  The client sees an error message


  Scenario: The client login in clockify with a non-existent user
    Given The client is on home page
    When The client on log in button on landing page
    When the client on log in manually button
    When the client set the mail "rociobalvarado@hotmail.com"
    Then  The client does not see the active button

