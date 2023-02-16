Feature: Fibonacci number sequences

  Scenario: Default sequence initiated
    When a fibonacci sequence is started
    Then the next number should be 1

  Scenario: Initialized with a legitimate fibonacci number
    Given a fibonacci sequence initialized to 8
    Then the next number should be 13

  Scenario: Sequence is initialized and skipped
    Given a fibonacci sequence initialized to 2
    When the sequence is skipped 3 times
    Then the state should be "The current number is 8"
    And the next number should be 13

  Scenario: Sequence is initialized and skipped
    Given a fibonacci sequence initialized to 5
    When the sequence is skipped 5 times
    Then the state should be "the current number is 55"
    And the next number should be 55


  Scenario:Sequence is initialized and skipped then current number is checked
    Given a fibonacci sequence initialized to 5
    When the sequence is skipped 2 times
    And the sequence is skipped 2 times
    Then the state should be "the current number is 34"

 Scenario: Initialized with a legitimate large fibonacci number
    Given a fibonacci sequence initialized to 855
    Then the next number should be 89

  Scenario: Sequence Initialized with a string
    When a fibonacci sequence initialized to "Yo" 
    Then it should throw an exception