# @debug
Feature: Data driver testing on csv and json file

Scenario Outline: Basic data driven - json payload fiel <name>
   * def jsondoc =
   """
    {
        "name": "<name>",
        "id" : <id>,
        "isManager": <isManager>
    }
   """
    * print jsondoc
    Examples:
    |read('payload/MOCK_DATA.json')|

# for handling null values from json data
Scenario Outline: Basic data driven - json payload fiel <name>
    # * def jsondoc =
    # """
    #  {
    #      "name": "<name>",
    #      "id" : <id>,
    #      "isManager": <isManager>
    #  }
    # """
     * print __row
    # * match __row == '#string'
     * def jsonUtils = Java.type('examples.features.utils.jsonutils')
     * def jsonObject = jsonUtils.removeNullKeys(karate.toString(__row))
     * print jsonObject
     * print __row
     Examples:
     |read('payload/MOCK_DATA.json')|

# Reading csv file
    Scenario Outline: Basic data driven - csv payload file <name>
        * def jsondoc =
        """
         {
             "name": "<name>",
             "id" : <id>,
             "isManager": <isManager>
         }
        """
         * print jsondoc
         * print __row
         Examples:
         |read('payload/MOCK_DATA.csv')|


         # for avoid null values or that vaules is not define here for that we are using embeded expression ##

        #  {
        #     "name": "<name>",
        #     "id" : ##(id),
        #     "isManager": ##(isManager)
        # }