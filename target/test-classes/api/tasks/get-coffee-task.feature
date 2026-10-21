@ignore
Feature: Consultar recurso Coffee

Background:
  * url baseUrl

Scenario:
  Given path '/Coffees', id
  When method GET
  Then status 200
  And match response.id == id