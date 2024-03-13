class Department < ApplicationRecord
    has_many :employees, dependent: :destroy
    validates :name, presence: true, length: { maximum: 50 }
end
