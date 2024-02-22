require 'rails_helper'

RSpec.describe EmployeeTicket, type: :model do
  it { should validate_presence_of(:employee_id) }
  it { should validate_presence_of(:ticket_id) }
  it { should belong_to(:employee) }
  it { should belong_to(:ticket) }
end
