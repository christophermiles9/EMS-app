class Student < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :state_id, uniqueness: true, numericality: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
