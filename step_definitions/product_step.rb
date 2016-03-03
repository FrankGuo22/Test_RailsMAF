def create_address
  @address ||= {  :name => "Yang",
    :telephone => "9826889", :address => "Cambrian70", :pay_type => "Check" }
end

Given (/^we have the following Products:$/) do |products|
  products_attributes = products.hashes.map { |tab_product_attrs|
    product_attrs = FactoryGirl.attributes_for(:product).stringify_keys
    product_attrs.merge(tab_product_attrs)
  }
  Product.create!(products_attributes)
  
end


When /^I check more detail$/ do
  click_link "Details"
end

When /^I add a wine into my cart$/ do
  click_button "Add to Cart"
end

When /^I add all wine into cart$/ do
  click_button "Add to Cart"
end

When /^I want to back to shopping$/ do
  click_link "Back to shopping"
end

When /^I press plus three more times$/ do

  click_button "+"
  click_button "+"
  click_button "+"
end

When /^I fill all my order information$/ do
  create_address
  fill_in "order_name", :with => @address[:name]
  fill_in "order_telephone", :with => @address[:telephone]
  fill_in "order_address", :with => @address[:address]
  select 'Check', :from => 'order_pay_type'
  click_button "Create Order"
end

When /^I checkout at my cart$/ do

  visit "/orders/new"
end

When /^I empty my cart$/ do

  click_button "Empty Cart"

end

Then /^I should see more information$/ do
  page.should have_content "Suit vegetarian"
end

Then /^I should see my cart$/ do
  page.should have_content "Your Cart"
end

Then /^I should see quantity field$/ do
  page.should have_content "Quantity"
end

Then /^I should see my cart with exactly number wine$/ do
  page.should have_content "1"

end

Then /^I go back the main page$/ do
  page.should have_content "Popular Products"
end

Then /^I should see checkout button$/ do

end

Then /^I turn into order page$/ do
  page.should have_content "Fill your order Information"
end

Then /^I see my order information$/ do
  page.should have_content "Your order is processing."
end

Then /^I should see notice$/ do
  page.should have_content "Cart is empty now"
end



