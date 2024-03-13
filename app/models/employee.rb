class Employee < ApplicationRecord
  belongs_to :department

  validates :name, presence: true, length: { maximum: 30 }
  validates :age, numericality: { greater_than_or_equal_to: 21, less_than_or_equal_to: 100 }
  validates :salary, numericality: { greater_than_or_equal_to: 0 }
end
