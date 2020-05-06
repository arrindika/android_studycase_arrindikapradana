@Android @Login
Feature: Login

  Scenario: login with correct email and password
    Given User is on moka start page
    When User click sign in button on moka start page
    And User input email "arrindika.pradana@gmail.com" on sign in page
    And User input password "07011999dika" on sign in page
    And User click sign in button on sign in page
    Then User is on moka homepage

  Scenario: login with correct phone and password
    Given User is on moka start page
    When User click sign in button on moka start page
    And User input phone "085344893411" on sign in page
    And User input password "07011999dika" on sign in page
    And User click sign in button on sign in page
    Then User is on moka homepage