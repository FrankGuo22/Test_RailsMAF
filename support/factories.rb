require 'factory_girl'
FactoryGirl.define do
  factory :product do |t|
    t.title 'test_title'
    t.description 'test_description'
    t.image_url 'test_image'
    t.price 35.0
    t.bottle_size 'test_size'
    t.company 'test_company'
    t.country 'test_country'
    t.grape_type 'test_type'
    t.suit_vegetarian 'test_answer'
    t.supplier_id 20
  end
  
  factory :user do |t|
    t.email 'email' 
    t.password 'password' 
    t.password_confirmation 'password_confirmation'
  end 
end
