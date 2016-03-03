Feature: Edit User
  As a registered user of the website
  I want to check my previous orders
  So I see all my orders

    Scenario: I sign in and check my orders
      Given I am logged in
      When I check my order
      Then I should see my all order information