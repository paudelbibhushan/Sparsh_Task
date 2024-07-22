FactoryBot.define do
  factory :user do
    full_name { Faker::Name.unique.name }
    phone_number { Faker::Number.number(digits: 10) }
    email { Faker::Internet.email }
    password { :'12345678' }
  end
end
