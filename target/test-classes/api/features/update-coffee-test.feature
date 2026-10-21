@api @update
Feature: Actualización de recurso Coffee

Background:
  * url baseUrl
  * def coffeeData = read('classpath:api/data/coffee-test-data.json')
  * def setup = call read('classpath:api/tasks/create-coffee-task.feature')
  * def testId = setup.coffeeId
  * def coffeeData2 = read('classpath:api/data/coffee-test-data2.json')

Scenario: Actualizar el precio de un coffee
  * print 'El ID capturado desde la creación es:', testId
  * call read('classpath:api/tasks/update-coffee-task.feature') { id: '#(testId)' }