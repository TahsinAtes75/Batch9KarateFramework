Feature: Post request

  Scenario: Post request Test 1
    * url "https://reqres.in/api/users"
    And request {"name":"Seyfettin","Job Title":"TestLead","Salary":10000}
    When method POST
    Then status 201
    * print response

