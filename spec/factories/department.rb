FactoryBot.define do
  factory :department do
    name { Faker::Company.name }
    floor { Faker::Number.number(digits: 2) }
  end
end
