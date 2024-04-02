Feature: This feature file will called in another feature file

Scenario: Calllable denario
    Given url 'https://api.sirv.com/v2/token'
    When request 
    """
        {
            "clientId" : "#(clientId)",
            "clientSecret" : "#(clientSecret)"
        }
    """
    Then method post    
