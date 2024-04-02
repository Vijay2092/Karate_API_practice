# @debug
Feature: Senario outline exmaples - basics 

Scenario:Basic of datadriven
    * def firstname =  "Vijay"
    * def id = 100
    * def isManager = false
    * print "Details are :" , firstname , id, isManager


Scenario Outline:Mutlipe data check by <fn>
    # if there is string formate then we need to pass that col. in double quote
    * def firstname =  "<fn>"
    * def id = <id>
    * def isManager =  <isManager>
    * print "Details are :" , firstname , id, isManager
    * match firstname == '#string'
    * match id == '#number'
    * match isManager == '#boolean'
       Examples:
       | fn         | id |  isManager |
       | Vijay      | 1  |      false |
       | Ajay       | 2  |      false |
       | Naman      | 3  |       true |
       | Vikas      | 4  |      false |

Scenario Outline: Basic data driven - JSON payload
    * def jsondoc =
    """
        {
            "name": <fn>,
            "id": <id>,
            "isManager": <isManager>
        }
    """
        * print jsondoc
        * print __row 
        * print __num
        Examples:
        | fn         | id! |  isManager! |
        | Vijay      | 1  |      false |
        | Ajay       | 2  |      false |
        | Naman      | 3  |       true |
        | Vikas      | 4  |      false |


        # embedded expression 
Scenario Outline: Basic data driven - JSON payload
        * def jsondoc =
        """
            {
                "name": "#(fn)",
                "id": #(id),
                "isManager":  #(isManager)
            }
        """
            * print jsondoc
            * print fn
            * print id
            * print isManager
            Examples:
            | fn         | id! |  isManager! |
            | Vijay      | 1  |      false |
            | Ajay       | 2  |      false |
            | Naman      | 3  |       true |
            | Vikas      | 4  |      false |
    
    







