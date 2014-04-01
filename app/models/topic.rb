class Topic < ActiveRecord::Base
  # rails 4, must get rid of attr_accessible
  attr_accessible :name, :user_id, :family_id, :slug
  has_many :quizzes
  belongs_to :family
  belongs_to :user
  validates :slug, presence: true

  def to_param
    "#{slug}".parameterize
  end
end
