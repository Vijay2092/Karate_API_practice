# @debug
Feature: This feature file will call other feature file

Scenario: Calling Callable
    * def callableData = call read('callable.feature')
    * print callableData


Scenario: calling callable 1
    * def callable1Data = call read("callable1.feature")
    * print callable1Data
    * print callable1Data.response.token



#we pass id and secret here we dont hardcode it will come here and use this variable from here   
Scenario: calling callable 2
    * def clientId = "IF32COO5YHLI1V1fbm6yaAxQG5w"
    * def clientSecret = "qPDYKw/9KlediMWs4IRNRsMeBgt/fsEsIEgmFKPVR+CvSwIF3ErzhdCrSdYlkY/JGu9lgkGCmB9IxgZPV+NqCw==" 
    * def callable2Data = call read('callable2.feature')
    * print callable2Data
    * print callable2Data.response.token


# if the vaiables is more we will create one object int that object we send that data
# if the name is define is different then we use '#(variable.name)'
Scenario: calling callable 2
    * def clientId1 = "IF32COO5YHLI1V1fbm6yaAxQG5w"
    * def clientSecret1 = "qPDYKw/9KlediMWs4IRNRsMeBgt/fsEsIEgmFKPVR+CvSwIF3ErzhdCrSdYlkY/JGu9lgkGCmB9IxgZPV+NqCw==" 
    * def obj =
    """
        {
        clientId : '#(clientId1)',
        clientSecret : '#(clientSecret1)'
        }
    """
    * def callable2Data = call read('callable2.feature') obj
    * print callable2Data
    * print callable2Data.response.token


Scenario: calling callable 3
    * def obj =
    """
        {
           "clientId": "IF32COO5YHLI1V1fbm6yaAxQG5w",
           "clientSecret": "qPDYKw/9KlediMWs4IRNRsMeBgt/fsEsIEgmFKPVR+CvSwIF3ErzhdCrSdYlkY/JGu9lgkGCmB9IxgZPV+NqCw=="
        }
    """
    * def callable3Data = call read('callable3.feature') obj
    * print callable3Data
    * print callable3Data.response.token


Scenario: calling callable 4
    * def obj =
    """
        {
           "clientId": "IF32COO5YHLI1V1fbm6yaAxQG5w",
           "clientSecret": "qPDYKw/9KlediMWs4IRNRsMeBgt/fsEsIEgmFKPVR+CvSwIF3ErzhdCrSdYlkY/JGu9lgkGCmB9IxgZPV+NqCw=="
        }
    """
    * def callable4Data = call read('callable4.feature@success') obj
    * def callable4Data2 = call read('callable4.feature@failure') obj
    * print callable4Data
    * print callable4Data.response.token


    