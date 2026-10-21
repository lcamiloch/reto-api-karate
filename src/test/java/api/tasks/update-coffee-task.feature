@ignore
Feature: Actualizar recurso Coffee

Background:
  * url baseUrl

Scenario:
  Given path '/Coffees'
  * def reqBody = 
  """
  {
    "id": #(id),
    "name": "#(coffeeData2.Name)",
    "description": "#(coffeeData2.Description)"
  }
  """
  And request reqBody
  When method PUT
  Then status 200
  And match response.name == coffeeData2.Name