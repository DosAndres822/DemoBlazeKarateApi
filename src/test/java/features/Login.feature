Feature: Test Login API

  @Login
  Scenario: Login with user already create
    Given url 'https://api.demoblaze.com/login'
    And request { username: 'CarlosLombana', password: '12345' }
    When method post
    Then status 200
    And match response contains { username: 'CarlosLombana', status: false }