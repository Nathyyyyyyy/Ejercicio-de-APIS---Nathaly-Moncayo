Feature: Pruebas de Signup y Login en Demoblaze

  Background:
    * url 'https://api.demoblaze.com'
    * header Content-Type = 'application/json'
    * header Origin = 'https://www.demoblaze.com'

  Scenario: Crear un nuevo usuario en signup
    * def usuario = 'user_' + java.util.UUID.randomUUID().toString().substring(0,8)
    * def password = 'Password123!'
    * def payload = { username: '#(usuario)', password: '#(password)' }
    Given path '/signup'
    And request payload
    When method post
    Then status 200
    And match response == { "message": "Sign up successful." }
    * print 'Usuario registrado exitosamente:', usuario
    * def usuario_nuevo = usuario
    * def password_nuevo = password

  Scenario: Intentar crear un usuario ya existente
    * def payload = { username: '#(usuario_nuevo)', password: '#(password_nuevo)' }
    Given path '/signup'
    And request payload
    When method post
    Then status 200
    And match response == { "errorMessage": "This user already exist." }
    * print 'Usuario ya existente:', usuario_nuevo

  Scenario: Usuario y password correcto en login
    * def payload = { username: '#(usuario_nuevo)', password: '#(password_nuevo)' }
    Given path '/login'
    And request payload
    When method post
    Then status 200
    And match response contains { token: '#string', expires: '#number' }
    * print 'Usuario logueado exitosamente:', usuario_nuevo

  Scenario: Usuario y password incorrecto en login
    * def payload = { username: '#(usuario_nuevo)', password: 'incorrecta' }
    Given path '/login'
    And request payload
    When method post
    Then status 200
    And match response == { "errorMessage": "Wrong password." }
    * print 'Usuario o contraseña incorrecta:', usuario_nuevo
