Feature: CEP
    As a softwarer tester
	In order to get a response from an API service(CEP)
	I want to send a request to this API(CEP)
	
Scenario: Validate a CEP
	Given an remote service API that returns an 'HTTP Response'(JSON)
	When I call Httparty#get with '#{url}'
	Then it should return an 'HTTP Response'
	And  I will parse/validate the 'HTTP Response'
	Then it should return parameters within a JSON
	And  I will parse/validate the JSON parameters