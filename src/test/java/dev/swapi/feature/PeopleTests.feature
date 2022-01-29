@parallel=true
@people

Feature: People tests

  Background: Define URL
    * url apiUrl
    * def calculations = Java.type("dev.swapi.helpers.Calculations")


  Scenario Outline: Test size of height is greater than 200
    Given path "people"
    And method Get
    Then status 200
    * def heightStr = $.results[*].height
    * def actualSizeHeight = calculations.countCorrectHeight(heightStr)
    * print actualSizeHeight
    And match actualSizeHeight == <expectedSize>
#        * def temp = karate.jsonPath(response, "$.results[?(@.height > 200)]")

    Examples:
      | expectedSize |
      | 1            |


  Scenario: Test names of heroes
    * def expectedNames = read("classpath:dev/swapi/json/names.json")
    Given path "people"
    And method Get
    Then status 200
    * def actualNames = $.results[*].name
    * print actualNames
    And match actualNames == expectedNames



  Scenario Outline: Test counter of people
    Given path "people"
    And method Get
    Then status 200
    And match response.count == <expectedCount>
    Examples:
      | expectedCount |
      | 82            |



