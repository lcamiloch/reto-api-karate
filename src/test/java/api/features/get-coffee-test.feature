@api @get
Feature: Consulta de recurso Coffee

Background:
  * url baseUrl
  * def setup = call read('classpath:api/tasks/create-coffee-task.feature')
  * def testId = setup.coffeeId

Scenario: Consultar un coffee existente
  * call read('classpath:api/tasks/get-coffee-task.feature') { id: '#(testId)' }