Feature: Reusable javascript function

Scenario: Reusable javascript function
    * def printName = function() { return "hii"}
    * def printName1 = function(name) { return name}
    * def printName2 =
    """
    function(name)
    {
    let welcome = "Hello " + name;
      return welcome
    }
    """