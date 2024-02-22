class Employee < ApplicationRecord
  belongs_to :department
  has_many :employee_tickets

  validates :name, presence: true
  validates :level, presence: true
  validates :department_id, presence: true
end