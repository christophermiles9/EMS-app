class Student < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :state_id, uniqueness: true, numericality: true

  has_many :practical_exams

  def full_name
    "#{first_name} #{last_name}"
  end
end
