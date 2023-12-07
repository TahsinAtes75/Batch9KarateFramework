Feature:Karate UI Test

  Scenario: Login to  Sauce Demo Website
    Given driver "https://www.saucedemo.com/"
    * maximize()
    And input("//*[@id='user-name']","standard_user")
    * delay(2000)
    And input("//*[@id='password']", "secret_sauce")
    * delay(2000)
    When click("//*[@id='login-button']")
    And retry(5,1500).waitForUrl("https://www.saucedemo.com/")
    Then match driver.url == "https://www.saucedemo.com/"
