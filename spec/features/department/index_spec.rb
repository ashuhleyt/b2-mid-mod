require 'rails_helper'

RSpec.describe 'Department Index' do 
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
    @ticket = create(:ticket)
    @employee_ticket = create(:employee_ticket, employee: @employee1, ticket: @ticket)
    visit "/departments"
  end

  describe 'as a user' do 
    it 'when I visit the index page, i see each depts name and floor' do 
      expect(page).to have_content(@department1.name)
      expect(page).to have_content(@department1.floor)
    end

    it 'and underneath each dept, I see the names of its employees' do 
      expect(@department1.employees).to include(@employee1, @employee2)
      expect(@department2.employees).to include(@employee3, @employee4)
      expect(@department3.employees).to include(@employee5, @employee6, @employee7)
    end
  end
end