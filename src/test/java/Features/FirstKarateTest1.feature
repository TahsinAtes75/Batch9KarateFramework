Feature: Hello Karate

  Scenario: How to print
    * print "Welcome to Karate"
    * print 'Hello Karate'
    * print 2+2
    And print 5+5

  Scenario: Variables
    * def name = "Yavuz"
    * def age = 18
    * print name ,"is",age,"years old"
    * print name  + "Velioglu"

  Scenario: Some Json object

    * def SDET =
   """
   {
   "FirstName":"Mehmet Erkan",
   "LastName":"Bas",
   "Salary":5000

   }
   """
    * print SDET
    * print SDET.FirstName
    * print SDET.LastName
    * print SDET.Salary