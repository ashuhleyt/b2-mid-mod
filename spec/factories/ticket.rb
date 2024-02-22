# spec/factories/tickets.rb
FactoryBot.define do
  factory :ticket do
    subject { Faker::Lorem.sentence }
    age { Faker::Number.number(digits: 2) }
  end
end
