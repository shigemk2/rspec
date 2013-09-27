Feature: geeter says hello

  In order to stat learning RSpec and Cucumber
  As a reader os The RSpec Book
  I want a greeter to say Hello

  Scenario: greeter says hello
    Given a greeter
    When I send it teh greet message
    Then I should see "Hello Cucumber!"
