Feature: Empty Cart
  As a registered user of the website
  I dont like items in my cart
  So empty my cart
  Background:
   Given we have the following Products:
    | title | description | bottle_size | company | country | grape_type | image_url | price | suit_vegetarian | supplier_id |
	| a1    | gj1         | big         | com1    | France  | white      | p1.jpg     | 221   | YES             | 1          |
	
    Scenario: I sign in and edit my account
      Given I am logged in
      When I check more detail
      Then I should see more information 
	
	Scenario: I add a wine into my cart
      Given I am logged in
      When I check more detail
      Then I should see more information
	  When I add a wine into my cart
	  Then I should see my cart
	  
	Scenario: I empty my cart
      Given I am logged in
      When I check more detail
      Then I should see more information
	  Then I should see quantity field
	  When I press plus three more times
	  When I add all wine into cart
	  Then I should see my cart with exactly number wine
	  When I empty my cart
	  Then I should see notice