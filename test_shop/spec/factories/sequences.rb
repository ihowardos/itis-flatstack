FactoryGirl.define do
  sequence :customer_email do |n|
    "customer_#{n}@example.com"
  end

  sequence :admin_email do |n|
    "admin_#{n}@example.com"
  end
end
