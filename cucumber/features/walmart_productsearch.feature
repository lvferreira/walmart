Feature: Validate Walmart website actions
	In order to buy a product
	As a Walmart consumer
	I want to buy a new Tv

Scenario: Buy a new Tv
	Given I am on the Walmart homepage
	When  I search for "Tv"
	Then  I should see a page with search results
	Then  I click on a product
	And   I should see the page of that product
	Then  I add that product to cart
	And   I open the cart 
	And   I should see the product within the cart