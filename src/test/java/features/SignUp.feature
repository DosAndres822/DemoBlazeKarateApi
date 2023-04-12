Feature: Test sign Up API

  @Sign
  Scenario: Create new user
    Given url 'https://api.demoblaze.com/signup'
    And request {username: 'GustavoMartinez3', password: '12345'}
    When method Post
    Then status 200
    And match response contains '""'