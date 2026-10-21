@ignore
Feature: Eliminar recurso Coffee

Background:
  * url baseUrl

Scenario:
  Given path '/Coffees'
  And param id = id
  When method DELETE
  Then status 200