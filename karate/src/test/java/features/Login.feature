Feature: Login

  Background:
    * url baseUrl
    * def bodyRequest200 = { "email": "eve.holt@reqres.in", "password": "cityslicka"}
    * def bodyRequest400 = { "email": "eve.holt@reqres.in"}
    * def responseJson200 = {"token": "QpwL5tke4Pnpja7X4"}
    * def responseJson400 = {"error": "Missing password"}

  Scenario Outline:
    Given path "api/login"
    And request <bodyRequest>
    When method post
    * print response
    Then status <statusCode>
    And match response == <responseJson>

    Examples:
    |bodyRequest   |responseJson   | statusCode|
    |bodyRequest200|responseJson200|200        |
    |bodyRequest400|responseJson400|400        |