# @debug
Feature: Get details of user 2

 Background:  Set url
    * url 'https://reqres.in/api/'

Scenario: Get th details of user 2
    Given path  "users/2"
#    // And request {} //request means payload we want to send
   When method GET
   Then status 200

   

Scenario: Create a Person
    Given path 'users'
    And request 
    """
    {
    "name": "morpheus",
    "job": "leader"
    }
    """
        When method post
        Then status 201
        Then match response == "#object"
        Then match response.name == "morpheus"
        Then print response
        # for printing the response 

  
    Scenario: Get th details of page 2
        Given path  "users"
        And param page = "2"
        When method GET
        Then status 200
        Then match response.page == 2



     


