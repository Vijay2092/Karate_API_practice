# @debug
Feature:Crud Users

Background: Set url
    * url 'https://dummy.restapiexample.com/api/v1/' 
    # * configure retry = {count:10, interval:5000} 
   

Scenario: Creat User 
    Given path '/create'
    And request
    """
        {
        "name":"test",
        "salary":"123",
        "age":"23"
        }
        """
        When method post
        Then status 200
        # * karate.pause(10000)
        # When method post 
        # Then status 200
        #  Then match response.age === "23"


Scenario: get single employee
    Given path 'employee/1'
    When method GET
    # Then status 429
    # * karate.pause(10000)
    When method post 
    Then status 200



Scenario: get multiple employees
    Given path 'employees'
    When method GET
    Then status 429
    * eval karate.wait('10 seconds')
    Then status 200 



Scenario: update emplaoyee by id
    Given path 'update/22'
    And request
    """
        {
            "name":"test",
            "salary":"123",
            "age":"23"
        }
    """
    When method put
    Then status 200 


Scenario: delete employees
    Given path 'delete/2'
    When method delete
    Then status 200 





