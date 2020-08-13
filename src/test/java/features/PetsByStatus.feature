Feature: Check Pets returned by Status
  Background:
	* url 'https://petstore.swagger.io/v2/pet/findByStatus'
	* header Accept = 'application/json'
	
	Scenario: get all pets with status available and name doggie
	Given path ''
	  And param status = 'available'
	  And param name = 'doggie'
	  When method get
	  Then status 200
	  #Then match response $ == { name: 'doggie' }
	  #Then match response $ == { status: 'available' }
	  Then print response.length
	  
	  Scenario: get all pets with status pending and name doggie
		Given path ''
		And param status = 'pending'
		And param name = 'doggie'
		When method get
		Then status 200
		Then print response.length
  
  Scenario: get all pets with status sold and name doggie
	Given path ''
	And param status = 'sold'
	And param name = 'doggie'
	When method get
	Then status 200
	Then print response.length
	
	
		
	
		
		
	  
	
	
	