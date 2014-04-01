class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # rails 4, must get rid of attr_accessible
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :username

  has_many :quizzes
  has_many :questions

  validates :username, :presence => true
  validates :username, :uniqueness => { :case_sensitive => false }
  validates :username, :length => { :minimum => 6 }

end
