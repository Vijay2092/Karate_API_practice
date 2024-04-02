# @debug
Feature:Ready to use (Rest-api)

Background: Set url
    * url 'https://api.restful-api.dev/'


Scenario: add object
    Given path 'objects'
    And request
    """
         {
   "name": "Apple MacBook Pro 16",
   "data": {
      "year": 2019,
      "price": 1849.99,
      "CPU model": "Intel Core i9",
      "Hard disk size": "1 TB"
           }   
         }
    """
        When method post
        Then status 200
        * def id = response.id
        * print 'new object Id :', id
        * karate.set("objectId", id)

Scenario: get single object
   Given path 'objects/', karate.get("objectId")
   When method get
   Then status 200

#   Scenario: update object
#     Given path 'objects/',karate.get("objectId")
#     And request
#     """ 
#  {
#    "name": "Apple MacBook Pro 16",
#    "data": {
#       "year": 2021,
#       "price": 2049.99,
#       "CPU model": "Intel Core i9",
#       "Hard disk size": "10 TB",
#     }
#   } 
#     """
#         When method put
#         Then status 200


# Scenario: partically update object
#   Given path 'objects/', karate.get("objectId")
#   And request
#   """
#       {  
#       "name": "Apple MacBook Pro 16 (Updated Name)"  
#       }
#   """
#       When method patch
#       Then status 200


    Scenario: list of all objects by id
        # Given path 'objects?id=3&id=5&id=10'
        # When method get 
        # Then status 200
    
        Given path 'objects'
        And param id = 3
        And param id = 5
        And param id = 10
        When method get 
        Then status 200

Scenario: List of all objects
    Given path 'objects'
    When method get
    Then status 200


# Scenario: delete object
#     Given path 'objects/', karate.get("objectId")
#     When method delete
#     Then status 200
#     * def msg = response.message;
    






