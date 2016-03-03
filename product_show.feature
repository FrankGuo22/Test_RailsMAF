Feature: Edit User
  As a registered user of the website
  I want to look at some wine in detail
  So I click a wine more details
  Background:
   Given we have the following Products:
    | title | description | bottle_size | company | country | grape_type | image_url | price | suit_vegetarian | supplier_id |
	| a1    | gj1         | big         | com1    | France  | white      | p1.jpg     | 221   | YES             | 1          |
	
    Scenario: I sign in and edit my account
      Given I am logged in
      When I check more detail
      Then I should see more information 
