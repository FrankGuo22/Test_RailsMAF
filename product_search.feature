Feature: Search
  As an administrator
  I want to be able to search for products by any product detail
  So that I quickly find users of interest
  Background:
   Given we have the following Products:
    | title | description | bottle_size | company | country | grape_type | image_url | price | suit_vegetarian | supplier_id |
	| a1    | gj1         | big         | com1    | France  | white      | p1.jpg     | 221   | YES             | 1           |
   @javascript
   Scenario: Find Product by title using auto-search
   When I enter "a1" in the search field
   Then the results must be:
    | title |
	| a1    |


