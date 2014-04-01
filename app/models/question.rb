class Question < ActiveRecord::Base
  # rails 4, must get rid of attr_accessible
  attr_accessible :answer, :body, :quiz_id, :user_id

  belongs_to :quiz
  belongs_to :user
end
