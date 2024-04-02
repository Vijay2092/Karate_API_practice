Feature: The feature will be called in to other feature file

Scenario: Callable1 feature
   Given url 'https://api.sirv.com/v2/token'
    When request 
    """
        {
           "clientId": "IF32COO5YHLI1V1fbm6yaAxQG5w",
           "clientSecret": "qPDYKw/9KlediMWs4IRNRsMeBgt/fsEsIEgmFKPVR+CvSwIF3ErzhdCrSdYlkY/JGu9lgkGCmB9IxgZPV+NqCw==" 
        }
    """
Then method post