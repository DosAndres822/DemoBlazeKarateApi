Feature: Test Login API

  @login @allLogin @allScenarios
  Scenario: Login with user already create
    Given url 'https://api.demoblaze.com/login'
    And request {username: 'GustavoMartinez2', password: '12345'}
    When method post
    Then status 200
    And print response
    And match response == "#string"

  @loginWrongPass @allLogin @allScenarios
  Scenario: Try to login with wrong password
    Given url 'https://api.demoblaze.com/login'
    And request {username: 'GustavoMartinez2', password: '123456'}
    When method Post
    Then status 200
    And match response == {"errorMessage": "Wrong password."}


  @loginFail @allLogin @allScenarios
  Scenario: Try to login with user has not created
    Given url 'https://api.demoblaze.com/login'
    And request { username: 'CarlosLombana2', password: '12345' }
    When method Post
    Then status 200
    And match response == {"errorMessage": "User does not exist."}
