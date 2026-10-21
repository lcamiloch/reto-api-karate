@crud
Feature: Flujo completo CRUD de CoffeeShop

Background:
  * def coffeeData = read('classpath:api/data/coffee-test-data.json')
  * def coffeeData2 = read('classpath:api/data/coffee-test-data2.json')

Scenario: Orquestar Creación, Consulta, Actualización y Eliminación
  * def createResult = call read('classpath:api/tasks/create-coffee-task.feature')
  * def createdId = createResult.coffeeId

  * call read('classpath:api/tasks/get-coffee-task.feature') { id: '#(createdId)' }

  * call read('classpath:api/tasks/update-coffee-task.feature') { id: '#(createdId)' }

  * call read('classpath:api/tasks/delete-coffee-task.feature') { id: '#(createdId)' }

  * url baseUrl
  Given path '/Coffees', createdId
  When method GET
  Then status 204