Feature: Delete

  Background:
    * url baseUrl

  Scenario Outline:
    Given path "<api>"
    When method delete
    * print response
    Then status <statusCode>

    Examples:
    |statusCode|api        |
    |204       |api/users/2|
    |404       |ap?i/?dd/2 |


