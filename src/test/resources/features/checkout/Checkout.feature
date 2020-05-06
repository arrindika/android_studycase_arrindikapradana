@Android @Checkout
Feature: Checkout
  Background:
    Given User is on moka start page
    When User click sign in button on moka start page
    And User input email "arrindika.pradana@gmail.com" on sign in page
    And User input password "07011999dika" on sign in page
    And User click sign in button on sign in page

  Scenario: User checkout 1 item
    Given User is on moka homepage
    When User order "Cold Brew" on favorites page
    And User click charge payment on homepage
    And User choose low payment
    And User click charge on payment page
    Then User see receipt page

  Scenario: User checkout 1 item with medium payment
    Given User is on moka homepage
    When User order "Cold Brew" on favorites page
    And User click charge payment on homepage
    And User choose medium payment
    And User click charge on payment page
    Then User see receipt page

  Scenario: User checkout 1 item with high payment
    Given User is on moka homepage
    When User order "Cold Brew" on favorites page
    And User click charge payment on homepage
    And User choose high payment
    And User click charge on payment page
    Then User see receipt page

  Scenario: User checkout 2 item
    Given User is on moka homepage
    When User order "Cold Brew" on favorites page
    And User order "Cappuccino" on favorites page
    And User click charge payment on homepage
    And User choose low payment
    And User click charge on payment page
    Then User see receipt page

  Scenario: User checkout 2 item in 1 menu
    Given User is on moka homepage
    When User order "Cold Brew" on favorites page
    And User click quantity on favorites page
    And User change quantity to "2"
    And User click save
    And User click charge payment on homepage
    And User choose low payment
    And User click charge on payment page
    Then User see receipt page