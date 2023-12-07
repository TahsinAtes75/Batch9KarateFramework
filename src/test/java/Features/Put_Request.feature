Feature: Post and Put request Test

  Scenario: Create a User
   Given url "https://reqres.in/"
    And path "api/users/2"
    And request
    """
    {
    "name":"Meral",
     "last_name":"Das",
     "Job_title":"TeamLead",
     "gender":"Female",
     "salary":150000,
     "email":"meraldas@gmail.com",
     "status":"Active"
    }
    """
    When method POST
    Then status 201
    And print response

   Scenario: PUT request
    Given url "https://reqres.in/"
    And path "api/users/2"
    And request
    """
    {
    "name":"Meral",
     "last_name":"Das",
     "Job_title":"TeamLead",
     "gender":"Female",
     "salary":20000,
     "email":"meraldas@gmail.com",
     "status":"Active"
    }
    """
    When method PUT
    Then status 200
    And print response
