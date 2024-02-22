require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it { should validate_presence_of(:subject) }
  it { should validate_presence_of(:age) }
  it { should have_many(:employee_tickets) }
end
