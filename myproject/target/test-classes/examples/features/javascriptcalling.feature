# @debug
Feature: Calling javascript 

Scenario: Calling javascript function from js file
    * def jsutil = read('utils/jsutils.js')
    * def val = jsutil().printName();
    * print val
    * def val = jsutil().printName1("Vijay");
    * print val
    * def val = jsutil().printName2("Ajay");
    * print val


Scenario: Caliing javascript functions from js feature file
    * def data = call read('reusablejs.feature')
    * print data
    * def val = data.printName()
    * print val
    * def val = data.printName1("yes")
    * print val
    * def val = data.printName2()
    * print val

