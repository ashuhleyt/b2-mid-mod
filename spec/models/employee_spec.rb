require 'rails_helper'

RSpec.describe Employee, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:level) }
  it { should validate_presence_of(:department_id) }
  it { should belong_to(:department) }
  it { should have_many(:employee_tickets) }
end
