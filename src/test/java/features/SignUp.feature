Feature: Test sign Up API


  @sign @allSign @allScenarios
  Scenario: Create new user
    Given url 'https://api.demoblaze.com/signup'
    And request {username: 'GustavoMartinez8', password: '12345'}
    When method Post
    Then status 200
    And match response contains '""'

  @signFail @allSign @allScenarios
  Scenario: Try to create user already created
    Given url 'https://api.demoblaze.com/signup'
    And request {username: 'GustavoMartinez2', password: '12345'}
    When method Post
    Then status 200
    And match response == {"errorMessage": "This user already exist."}
