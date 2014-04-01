require 'spec_helper'

describe Topic, 'Associations' do
  it { should have_many(:quizzes) }
  it { should belong_to(:family) }
  it { should belong_to(:user) }
end

describe Topic, 'Validations' do
  it { should validate_presence_of(:slug) }
end
