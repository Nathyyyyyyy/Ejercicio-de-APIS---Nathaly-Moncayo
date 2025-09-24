Feature: Pruebas de Signup y Login en Demoblaze

  Background:
    * url 'https://api.demoblaze.com'
    * header Content-Type = 'application/json'
    * header Origin = 'https://www.demoblaze.com'
    * def usuario = 'user_' + java.util.UUID.randomUUID().toString().substring(0,8)
    * def password = 'Password123!'

  Scenario: Crear un nuevo usuario en signup
    * def payload = { username: '#(usuario)', password: '#(password)' }
    Given path '/signup'
    And request payload
    When method post
    Then status 200
    * print 'Respuesta signup nuevo:', response

  Scenario: Intentar crear un usuario ya existente
    * def payload = { username: '#(usuario)', password: '#(password)' }
    Given path '/signup'
    And request payload
    When method post
    Then status 200
    * print 'Respuesta signup existente:', response

  Scenario: Usuario y password correcto en login
    * def payload = { username: '#(usuario)', password: '#(password)' }
    Given path '/login'
    And request payload
    When method post
    Then status 200
    * print 'Respuesta login correcto:', response

  Scenario: Usuario y password incorrecto en login
    * def payload = { username: '#(usuario)', password: 'incorrecta' }
    Given path '/login'
    And request payload
    When method post
    Then status 200
    * print 'Respuesta login incorrecto:', response
