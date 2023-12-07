Feature: API Get request


  Scenario: Sample API Get Request for Single user
    Given url "https://reqres.in/api/users/2"
    When method GET
    Then status 200
    And print response

  Scenario: API GET request List of User
    * url "https://reqres.in/api/users?page=2"
    When method GET
    Then status 200
    And print response
    And match header Content-Type =="application/json; charset=utf-8"
    And match header Vary =="Accept-Encoding"
    And match header Date == "#present"

  Scenario: Json Body Verification
    Given url "https://reqres.in/api/users/2"
    When method GET
    Then status 200
    * def response =
    """
    {
    "data": {
        "id": 2,
        "email": "janet.weaver@reqres.in",
        "first_name": "Janet",
        "last_name": "Weaver",
        "avatar": "https://reqres.in/img/faces/2-image.jpg"
    },
    "support": {
        "url": "https://reqres.in/#support-heading",
        "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
    }
}
    """
    * print response
    * match response.data.id == 2
    * match response.data.email == "janet.weaver@reqres.in"
    * match response.data.last_name == "Weaver"

  Scenario: Request with Path
    * url "https://reqres.in/"
    Given path "api/users"
    And param id = 8
    When method GET
    Then status 200
    And print response

