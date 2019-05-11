class PracticalExam < ApplicationRecord
  validates :number, presence: true
  validates :name, presence: true

  belongs_to :student
  belongs_to :instructor
  has_many :practical_skills

  def populate_skills
    if number == '5C'
      practical_skills.new(text: 'Takes, or verbalizes, body substance isolation precautions', critical: true, points_possible: nil)
      practical_skills.new(text: 'Applies direct pressure to the wound', critical: false, points_possible: 1)
      practical_skills.new(text: 'Applies a pressure dressing to the wound', critical: false, points_possible: 1)
      practical_skills.new(text: 'Applies a tourniquet', critical: false, points_possible: 1)
      practical_skills.new(text: 'Verbalizes how to know when tourniquet has been adequately tightened. (until bleeding has stopped)', critical: false, points_possible: 1)
      practical_skills.new(text: 'Properly positions the patient', critical: false, points_possible: 1)
      practical_skills.new(text: 'Applies high concentration oxygen', critical: true, points_possible: nil)
      practical_skills.new(text: 'Initiates steps to prevent heat loss from the patient', critical: false, points_possible: 1)
      practical_skills.new(text: 'Indicates the need for immediate transportation', critical: false, points_possible: 1)
      practical_skills.new(text: 'Candidate failed to control hemorrhage appropriately', critical: true, points_possible: nil)
      practical_skills.new(text: 'Candidate applied a tourniquet before attempting other methods of bleeding control.', critical: true, points_possible: nil)
      practical_skills.new(text: 'Candidate did not complete the station with the 5 minute time limit', critical: true, points_possible: nil)
    end
  end
end
