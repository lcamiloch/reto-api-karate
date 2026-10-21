@api @create
Feature: Creación de recurso Coffee

Scenario: Crear un coffee exitosamente
  * call read('classpath:api/tasks/create-coffee-task.feature')