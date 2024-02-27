require 'rails_helper'

RSpec.describe 'employee show' do 
  before :each do 
    @department1 = create(:department)
    @department2 = create(:department)
    @department3 = create(:department)
    @employee1 = create(:employee, department: @department1)
    @employee2 = create(:employee, department: @department1)
    @employee3 = create(:employee, department: @department2)
    @employee4 = create(:employee, department: @department2)
    @employee5 = create(:employee, department: @department3)
    @employee6 = create(:employee, department: @department3)
    @employee7 = create(:employee, department: @department3)
    @ticket1 = create(:ticket)
    @ticket2 = create(:ticket)
    @ticket3 = create(:ticket)
    @ticket4 = create(:ticket)
    @ticket5 = create(:ticket)
    @employee_ticket1 = create(:employee_ticket, employee: @employee1, ticket: @ticket1)
    @employee_ticket2 = create(:employee_ticket, employee: @employee1, ticket: @ticket2)
    @employee_ticket3 = create(:employee_ticket, employee: @employee2, ticket: @ticket3)
    @employee_ticket4 = create(:employee_ticket, employee: @employee1, ticket: @ticket4)
    @employee_ticket5 = create(:employee_ticket, employee: @employee1, ticket: @ticket5)

    visit "/employees/#{@employee1.id}"
  end

  it 'i see name, dept' do 
    # save_and_open_page
    # require 'pry'; binding.pry
    expect(page).to have_content(@employee1.name)
    expect(page).to have_content(@employee1.department.name)
  end

  it 'and I see their tickets from oldest to newest' do 
 
    expect(@ticket1.subject).to appear_before(@ticket2.subject)
    expect(@ticket4.subject).to appear_before(@ticket5.subject)
  end
end