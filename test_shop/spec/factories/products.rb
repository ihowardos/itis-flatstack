FactoryGirl.define do
  factory :product do
    title Faker::Commerce.product_name
    text Faker::Lorem.paragraph
    amount 3
    price 200
    purchase_price 100
  end
end
