Feature: Login to page 
    As a user 
    I should be able to log in 
    If I supply valid user credentials

  @javascript
Scenario: Login with BAD credentials
    Given I go to "/index.php/customer/account/login/"
    When I fill in "login[username]" with "bad@bad.com"
    And I fill in "login[password]" with "badTest1234"
    And I press "send" 
    Then I should be on "/index.php/customer/account/login/"


  @javascript
Scenario: Login with good credentials
    Given I go to "/index.php/customer/account/login/"
    When I fill in "login[username]" with "eduardpo@outlook.com"
    And I fill in "login[password]" with "test123"
    And I press "send" 
    Then I should be on "/index.php/customer/account/"
