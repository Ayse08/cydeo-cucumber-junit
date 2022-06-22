Feature: Wikipedia search functionality and verifications

  #WSF-6557 (we can write here reference --> potential jira ticket number)

  Scenario: Wikipedia Search Functionality Title Verification
    Given User is on Wikipedia home page
    When User types "Elon Musk" in the wiki search box
    And User clicks wiki search button
    Then User sees "Elon Musk" is in the wiki title

    Scenario: Wikipedia Search Functionality Header Verification
      Given User is on Wikipedia home page
      When User types "Steve Jobs" in the wiki search box
      And User clicks wiki search button
      Then User sees "Steve Jobs" is in the main header

      @scenarioOutline
  Scenario Outline: Wikipedia Search Functionality Title Verification
    Given User is on Wikipedia home page
    When User types "<searchValue>" in the wiki search box
    And User clicks wiki search button
    Then User sees "<expectedTitle>" is in the wiki title
    Then User sees "<expectedMainHeader>" is in the main header

        @soccerPlayers
    Examples: search values we are going to be using in this scenario is as below
    |searchValue    |expectedTitle   |expectedMainHeader|
    |Steve Jobs     |Steve Jobs      |Steve Jobs        |
    |Bob Marley     |Bob Marley      |Bob Marley        |
    |Lady Gaga      |Lady Gaga       |Lady Gaga         |
    |Marie Curie    |Marie Curie     |Marie Curie       |
    |Chuck Norris   |Chuck Norris    |Chuck Norris      |
    |Kate Winslet   |Kate Winslet    |Kate Winslet      |



