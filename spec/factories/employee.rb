# spec/factories/employees.rb
FactoryBot.define do
  factory :employee do
    name { Faker::Name.name }
    level { Faker::Number.digit }
  end
end
