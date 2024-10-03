Feature: Login

  Background:
    * url baseUrl
    * def bodyRequest = { "name": "morpheus", "job": "zion resident"}
    * def responseJson200 = {"name": "morpheus","job": "zion resident","updatedAt": "#string"}


  Scenario:
    Given path "api/users/2"
    And request bodyRequest
    When method put
    * print response
    Then status 200
    And match response contains responseJson200

  Scenario:
    Given path "ap?i/?dd/2"
    And request bodyRequest
    When method put
    * print response
    Then status 404