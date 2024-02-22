FactoryBot.define do 
  factory :department, class: 'Department' do 
    name { Faker::Job.field }
    floor { Faker::Number.decimal_part(digits: 2) }
  end

  factory :employee, class: 'Employee' do 
    name { Faker::Name.female_first_name }
    level { Faker::Number.decimal_part(digits: 2) }
  end

  factory :ticket, class: 'Ticket' do 
    subject { Faker::Fantasy::Tolkien.poem }
    age { Faker::Number.digit }
  end
end