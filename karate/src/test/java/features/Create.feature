Feature: Login

  Background:
    * url baseUrl
    * def bodyRequest = { "name": "morpheus", "job": "leader"}
    * def responseJson200 = {"name": "morpheus","job": "leader","id": "#string","createdAt": "#string"}


  Scenario:
    Given path "api/users"
    And request bodyRequest
    When method post
    Then status 201
    And match response contains responseJson200

  Scenario:
    Given path "ap?i/?dd"
    And request bodyRequest
    When method post
    Then status 404