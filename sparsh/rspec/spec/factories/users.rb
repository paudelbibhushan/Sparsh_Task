FactoryBot.define do
  factory :user do
    factory :random_user, class: User do
      name { Faker::Name.unique.name }
      phone_number{ Faker::Number.within(range: 10..10) }
    end
  end
end
