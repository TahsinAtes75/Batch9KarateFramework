Feature: Assert with Karate

  Scenario: Matching Example
    * def name = "Tahsin"
    * match name == "Tahsin"
    * match name != "Tahsin"

    # Similar to Assert.assertEquals

    Scenario: More Matching example
      * def employee =

      """
      {
      "FirstName":"Monika",
      "LastName":"Sturman",
      "Salary":7000,
      "Active":true
      }
      """

      * print employee
      * print employee.Salary == 7000

      Scenario: fuzzy method

       * def SeniorSDET =
        """
        {
        "FirstName":"Busra",
        "LastName":"Celik",
        "Salary":7000,
        "Active": true
        }
        """
        * match SeniorSDET.FirstName == "#string"
        * match SeniorSDET.Salary == "#number"
        * match SeniorSDET.Active == "#boolean"