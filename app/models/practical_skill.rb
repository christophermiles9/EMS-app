class PracticalSkill < ApplicationRecord
  validates :text, presence: true

  belongs_to :practical_exam
end
