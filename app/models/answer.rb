class Answer < ActiveRecord::Base
  # rails 4, must get rid of attr_accessible
  attr_accessible :exam_id, :question_id, :status
  belongs_to :question
  belongs_to :exam

  # these may be required?
  # validate :exam_id, :presence => true
  # validate :question_id, :presence => true
end
