class Comment < ActiveRecord::Base
  # rails 4, must get rid of attr_accessible
  attr_accessible :body, :quiz_id, :user_id
  belongs_to :user
end
