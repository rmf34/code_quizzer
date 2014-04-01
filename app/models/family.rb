class Family < ActiveRecord::Base
  # rails 4, must get rid of attr_accessible
  attr_accessible :description, :name
  has_many :topics
  validates :page_title, length: {maximum: 45}
end
