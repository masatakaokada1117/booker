FactoryBot.define do
  factory :studio do
    name { Faker::Name.name }
    prefecture_id { Faker::Number.between(from: 1, to: 47) }
  end
end
