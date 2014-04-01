require 'spec_helper'

describe User, 'Associations' do
  it { should have_many(:quizzes) }
  it { should have_many(:questions) }
end

describe User, 'Validations' do
  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username).case_insensitive }
  it { should ensure_length_of(:username).is_at_least(6) }
end
