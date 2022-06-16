Feature: Wikipedia search functionality and verifications

  #WSF-6557 (we can write here reference)

  Scenario: TC#2: Wikipedia Search Functionality Title Verification
  Given User is on Wikipedia home page
  When User types Steve Jobs in the wiki search box
  And User clicks wiki search button
  Then User sees Steve Jobs is in the wiki title