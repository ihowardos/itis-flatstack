FactoryGirl.define do
  factory :user do
    email { generate(:customer_email)}
    password "123321123"
    password_confirmation "123321123"
  end

  trait :admin do
    email { generate (:admin_email)}
    role "admin"
  end
end
