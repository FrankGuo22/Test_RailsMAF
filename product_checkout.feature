Feature: Edit User
  As a registered user of the website
  I want buy some wine
  So I buy some items
  Background:
   Given we have the following Products:
    | title | description | bottle_size | company | country | grape_type | image_url | price | suit_vegetarian | supplier_id |
	| a1    | gj1         | big         | com1    | France  | white      | p1.jpg     | 221   | YES             | 1          |
	  
	Scenario: I checkout my cart's item
      Given I am logged in
      When I check more detail
      Then I should see more information
	  Then I should see quantity field
	  When I press plus three more times
	  When I add all wine into cart
	  Then I should see my cart with exactly number wine
	  Then I should see checkout button
	  When I checkout at my cart
	  Then I turn into order page
	  When I fill all my order information
	  Then I see my order information
	  