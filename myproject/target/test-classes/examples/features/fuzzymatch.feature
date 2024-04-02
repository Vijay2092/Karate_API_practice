# @debug
Feature: Fuzzy matcher exmaples

Scenario:  Fuzzy matcher 1
    * def obj = 
    """
        {
            "name" : "vijay",
            "id" : 1,
            "mob_no" : "1234567890"
        }
    """
* match obj.name == "#string"
* match obj.id  == "#number"

# another method to check number
# regex expects actual (string) value to match the regular-expression
* match obj.mob_no == "#regex[0-9]{10}"
* match obj.mob_no == "#regex \\d{10}"

# for use regex we need to covert interger value to the string 
* match (obj.id +"") == "#regex [0-9]{1}"



Scenario: Fuzzy matcher - 2
    * def obj =
    """
        {
           "name" : " Vijay",
           "company" : "MB"

        }
    """
 * match obj == 
 """
    {
        "name" : "#present",
        "company":"#ignore"
    }
 """


Scenario: fuzzy matcher for arrays 
    * def obj = 
    """
        {
            "id" : 123,
            "name" : "Vijay",
            "manageer": false,
            "skills":[
                "java",
                "Testing"
            ]
        }
    """
   * match obj.skills == "#array"
   * match obj.skills == "#[]"
   * match obj.skills == "#[2]"

   # suppose u want to check the array contains only string values 
   # so u need to use fuzzy matcher combination
   * match obj.skills == "#[] #string"

   