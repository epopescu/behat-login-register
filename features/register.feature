Feature: Register to website 
    As a user 
    I should be able to register in 
    If I supply valid user details

  @javascript
Scenario: Register with BAD details
    Given I go to "/index.php/customer/account/create/"
    When I fill in "firstname" with "Eduard"
    And I fill in "lastname" with "Popescu"
    And I fill in "email" with "eduardpo@outlook.com"
    And I fill in "password" with "notTheSame"
    And I fill in "password_confirmation" with "obvious"
    And I press "Create an Account" 
    Then I should be on "/index.php/customer/account/create/"


  @javascript
Scenario: Register with good details
    Given I go to "/index.php/customer/account/create/"
    When I fill in "firstname" with "Eduard"
    And I fill in "lastname" with "Popescu"
    And I fill in "email" with "eduardpo007@outlook.com"
    And I fill in "password" with "goodPassword"
    And I fill in "password_confirmation" with "goodPassword"
    And I press "Create an Account"
    Then I should be on "/index.php/customer/account/"
