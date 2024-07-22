FactoryBot.define do
  factory :post do
    title { Faker::Movie.title }
    body { Faker::Lorem.paragraph }
    user
  end
end
