@ignore
Feature: Crear recurso Coffee

Background:
  * url baseUrl
  * def coffeeData = read('classpath:api/data/coffee-test-data.json')

Scenario:
  Given path '/Coffees'
  And request read('classpath:api/payloads/create-coffee-request.json')
  When method POST
  Then status 200
  And match response == read('classpath:api/schemas/coffee-response-schema.json')
  * def coffeeId = response.id
