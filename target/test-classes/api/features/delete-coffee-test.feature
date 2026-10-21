@api @delete
Feature: Eliminación de recurso Coffee

Background:
  * url baseUrl
  * def setup = call read('classpath:api/tasks/create-coffee-task.feature')
  * def testId = setup.coffeeId

Scenario: Eliminar un coffee y validar que no exista
  * call read('classpath:api/tasks/delete-coffee-task.feature') { id: '#(testId)' }
  
  Given path '/Coffees', testId
  When method GET
  Then status 204